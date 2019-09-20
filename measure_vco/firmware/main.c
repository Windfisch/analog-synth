#include <stdint.h>

#include <libopencm3/stm32/spi.h>
#include <libopencm3/stm32/rcc.h>
#include <libopencm3/stm32/gpio.h>
#include <libopencm3/stm32/usart.h>
#include <libopencm3/stm32/exti.h>
#include <libopencm3/stm32/timer.h>
#include <libopencm3/cm3/nvic.h>
#include <stdio.h>
#include <unistd.h>
#include <errno.h>
#include <math.h>


#define MCU_CLOCK  72000000 // 72 MHz

#define USART_DEBUG USART1
#define RCC_USART_DEBUG RCC_USART1

#define TIM_MEAS TIM2
#define RCC_TIM_MEAS RCC_TIM2
#define RST_TIM_MEAS RST_TIM2

// must be pin 5 to 9, otherwise you have to adapt the ISR routine
#define EXTI_MEAS EXTI11
#define EXTI_MEAS_PIN GPIO11
#define EXTI_MEAS_GPIO GPIOA
#define exti_meas_isr exti15_10_isr
#define NVIC_EXTI_MEAS_IRQ NVIC_EXTI15_10_IRQ


#define LED_GPIO GPIOC
#define LED_PIN GPIO13

// The SPI bus with the DAC
#define DAC_SS_PORT GPIOB
#define DAC_SS_PIN GPIO12

#define SPI_DAC SPI2 // using PB13==clock and PB15==mosi
#define RCC_SPI_DAC RCC_SPI2

volatile int tim_meas_div = 1; // range: 1 - 65536. this equals tim_meas's prescaler plus 1. i.e. it's the number of mcu clocks per one timer tick

// allow printf() to use the USART
int _write(int file, char *ptr, int len)
{
	int i;

	if (file == STDOUT_FILENO || file == STDERR_FILENO) {
		for (i = 0; i < len; i++) {
			if (ptr[i] == '\n') {
				usart_send_blocking(USART_DEBUG, '\r');
			}
			usart_send_blocking(USART_DEBUG, ptr[i]);
		}
		return i;
	}
	errno = EIO;
	return -1;
}

void delay_us(int us)
{
	const int tim_meas_clock = MCU_CLOCK / tim_meas_div;
	#define DELAY_MAX_COUNT 50000 // this has an ample margin to 65536

	uint16_t t0 = timer_get_counter(TIM_MEAS);
	uint16_t t1;

	int total_increments = ((uint64_t)us) * tim_meas_clock / 1000000;

	int takes = total_increments / DELAY_MAX_COUNT;
	total_increments = total_increments % DELAY_MAX_COUNT;

	for (int i=0; i<takes; i++)
	{
		do
		{
			t1 = timer_get_counter(TIM_MEAS);
		} while ( (uint16_t)(t1-t0) < DELAY_MAX_COUNT);
		t0 += DELAY_MAX_COUNT;
	}

	do
	{
		t1 = timer_get_counter(TIM_MEAS);
	} while ( (uint16_t)(t1-t0) < total_increments);
}

//-------------------------------------------------------------------------
// TIMER CONTROL
//-------------------------------------------------------------------------
// Usage:
//   1. use update_tim_meas_freq()
//   2. set n_measurements and measurement_time_limit accordingly
//      (usually, one wants to set one to UINT32_MAX)
//   3. set timer_state = WAITING
//   4. wait for timer_state becoming IDLE again
//   5. retrieve the results in measurements[], measurement_count and measurement_time.


// private variables
volatile uint16_t timer_begin; // [timer ticks]
volatile int timer_edge; // EXTI_TRIGGER_RISING or EXTI_TRIGGER_FALLING

// input variables
volatile enum { IDLE, WAITING, RUNNING } timer_state = IDLE;
volatile uint32_t n_measurements = 5;
volatile uint32_t measurement_time_limit = UINT32_MAX; // [timer ticks]

// output variables
volatile uint32_t measurement_count;
volatile uint32_t measurement_time; // [timer ticks]

#define MAX_MEASUREMENTS 1000
typedef struct
{
	volatile int high_time; // [timer ticks]
	volatile int low_time;  // [timer ticks]
} measurement_t;

volatile measurement_t measurements[MAX_MEASUREMENTS];

//-------------------------------------------------------------------------

void panic(void) { for(;;); }

void exti_meas_isr()
{
	uint16_t timer_val = timer_get_counter(TIM_MEAS);
	if (exti_get_flag_status(EXTI_MEAS))
	{
		exti_reset_request(EXTI_MEAS);
		
		switch (timer_edge)
		{
			case EXTI_TRIGGER_RISING:
				
				switch(timer_state)
				{
					case WAITING:
						timer_begin = timer_val;
						measurement_count = 0;
						measurement_time = 0;
						timer_state = RUNNING;
						break;

					case RUNNING:
					{
						uint16_t elapsed = timer_val - timer_begin; // this may underflow. this is fine.
						timer_begin = timer_val;

						measurements[measurement_count].low_time = elapsed;
						measurement_time += measurements[measurement_count].high_time + measurements[measurement_count].low_time;
						measurement_count++;

						if (measurement_count >= MAX_MEASUREMENTS || measurement_count >= n_measurements || measurement_time >= measurement_time_limit)
							timer_state = IDLE;

						break;
					}
					case IDLE:
						break;

				}

				exti_set_trigger(EXTI_MEAS, EXTI_TRIGGER_FALLING);
				timer_edge = EXTI_TRIGGER_FALLING;
				break;

			case EXTI_TRIGGER_FALLING:

				switch(timer_state)
				{
					case WAITING: break;
					case IDLE: break;
					case RUNNING:
					{
						uint16_t elapsed = timer_val - timer_begin; // this may underflow. this is fine.
						timer_begin = timer_val;

						measurements[measurement_count].high_time = elapsed;
					}
				}

				exti_set_trigger(EXTI_MEAS, EXTI_TRIGGER_RISING);
				timer_edge = EXTI_TRIGGER_RISING;
				
				break;

			default:
				panic();
		}
		//printf("exti7! %d\n", timer_val);
	}
	else
	{
		//printf("exti???\n");
	}
}


void dac_write(int val)
{
		gpio_clear(DAC_SS_PORT, DAC_SS_PIN); // slave select low
		spi_xfer(SPI_DAC, 0x0000 | 0x3000 | val);
		gpio_set(DAC_SS_PORT, DAC_SS_PIN); // slave select high
}

void play_note(int code)
{
	dac_write(code);

	//for (volatile int i=0; i<1000000; i++);
	delay_us(250000);
}

static unsigned reverse_bits(unsigned val, int n_bits)
{
	unsigned result = 0;
	for (int i=0; i<n_bits; i++)
	{
		if (val & (1<<i))
			result |= (1 << (n_bits-i-1));
	}
	return result;
}

void update_tim_meas_freq(uint32_t freq)
{
	int prescaler = (MCU_CLOCK+freq-1) / freq - 1; // round up
	if (prescaler > 0xFFFF) prescaler = 0xFFFF;
	if (prescaler < 0) prescaler = 0;

	tim_meas_div = prescaler+1;

	timer_disable_counter(TIM_MEAS);
	timer_set_prescaler(TIM_MEAS, prescaler);
	timer_generate_event(TIM_MEAS, TIM_EGR_UG); // force the prescaler preload register to be flushed into the active register
	timer_enable_counter(TIM_MEAS);
}


// ---------- frequency expectation ----------

#define PROBE1 1024
#define PROBE2 3096
int probe1_freq, probe2_freq;

void init_frequency_expectations()
{
	// measure the frequencies at PROBE1 and PROBE2 in order to feed the expected_frequency() helper function
	update_tim_meas_freq(10); // this is a very conservative value, yielding bad resolution but no risk of overflowing the timer.
	dac_write(PROBE1);
	timer_state = WAITING;
	while (timer_state != IDLE); // wait for the measurement to complete
	probe1_freq = MCU_CLOCK * measurement_count / tim_meas_div / measurement_time;
	dac_write(PROBE2);
	timer_state = WAITING;
	while (timer_state != IDLE); // wait for the measurement to complete
	probe2_freq = MCU_CLOCK * measurement_count / tim_meas_div / measurement_time;
	printf("freq at %d is %d, freq at %d is %d\n", PROBE1, probe1_freq, PROBE2, probe2_freq);
}

int expected_frequency(int codepoint)
{
	float octaves = log2(probe2_freq/ (float) probe1_freq); // octaves across PROBE1 .. PROBE2
	return probe1_freq * exp2(octaves * (float)(codepoint-PROBE1) / (float)(PROBE2-PROBE1));
}

int expected_codepoint(float freq)
{
	float octaves = log2(probe2_freq/ (float) probe1_freq); // octaves across PROBE1 .. PROBE2
	return log2(freq / probe1_freq) / octaves * (PROBE2-PROBE1) + PROBE1;
}

// requires that init_frequency_expectations() has been called before
// measures n cycles and returns the frequency.
// side effects: fills measurements and associated variables.
float measure_frequency_at_codepoint(int codepoint, int n)
{
	measurement_time_limit = UINT32_MAX;
	n_measurements = n;
	update_tim_meas_freq( expected_frequency(codepoint) * 2 * 30000 ); // that leaves an octave room for misjudgement. 30000 ~= 2**16 / 2
	dac_write(codepoint);

	timer_state = WAITING;
	while (timer_state != IDLE); // wait for the measurement to complete.

	return ((float)MCU_CLOCK) / tim_meas_div / measurement_time * measurement_count;
}

// accuracy: maximum frequency deviation relative to freq. use 0.003 for 5 cent accuracy
int search_codepoint_for_frequency(float freq, float accuracy, int n)
{
	int codepoint = expected_codepoint(freq);
	
	printf("searching for %f Hz\n", freq);

	int codepoint_error;
	float actual_freq;
	do
	{
		if (codepoint < 0) codepoint = 0;
		if (codepoint >= 4096) codepoint = 4095;
		printf("trying codepoint %i", codepoint);
		actual_freq = measure_frequency_at_codepoint(codepoint, n);
		codepoint_error = expected_codepoint(freq) - expected_codepoint(actual_freq);
		printf(" -> freq is %f Hz -> need to shift by %+i\n", actual_freq, codepoint_error);
		codepoint += codepoint_error;
	} while (codepoint_error != 0 && !(freq/actual_freq <= (1.f + accuracy) && actual_freq/freq <= (1.f + accuracy)));
	
	printf("result: %f is at %d\n", actual_freq, codepoint);

	return codepoint;
}

void measure_frequency_stability(float target_freq)
{
	int codepoint = search_codepoint_for_frequency(target_freq, 0.000, 10);
	printf("code point is %d\n", codepoint);

	update_tim_meas_freq( target_freq * 2 * 30000 ); // that leaves an octave room for misjudgement. 30000 ~= 2**16 / 2
	measurement_time_limit = MCU_CLOCK / tim_meas_div;
	n_measurements = MAX_MEASUREMENTS;
	dac_write(codepoint);

	timer_state = WAITING;
	while (timer_state != IDLE); // wait for the measurement to complete.
	
	printf("done, took %d measurements\n", measurement_count);
	// print the result
	printf("%4d %6d ", codepoint, tim_meas_div);
	for (uint32_t i=0; i<measurement_count; i++)
		printf("  %8d %8d", measurements[i].low_time, measurements[i].high_time);
	printf("\n");
}
// ---------- main code ----------

int main(void) {
	//rcc_clock_setup_pll(&rcc_hse_8mhz_3v3[RCC_CLOCK_3V3_84MHZ]);
	rcc_clock_setup_in_hse_8mhz_out_72mhz();

	rcc_periph_clock_enable(RCC_GPIOA); // USART
	rcc_periph_clock_enable(RCC_GPIOB); // EXTI, SPI2
	rcc_periph_clock_enable(RCC_GPIOC); // LED
	//rcc_periph_clock_enable(RCC_SYSCFG); // for interrupts
	
	// interrupt pin
	nvic_enable_irq(NVIC_EXTI_MEAS_IRQ);
	//gpio_mode_setup(EXTI_MEAS_GPIO, GPIO_MODE_INPUT, GPIO_PUPD_NONE, EXTI_MEAS_PIN);
	gpio_set_mode(EXTI_MEAS_GPIO, GPIO_MODE_INPUT, GPIO_CNF_INPUT_FLOAT, EXTI_MEAS_PIN);
	exti_select_source(EXTI_MEAS, EXTI_MEAS_GPIO);
	exti_set_trigger(EXTI_MEAS, EXTI_TRIGGER_RISING);
	timer_edge = EXTI_TRIGGER_RISING;
	exti_enable_request(EXTI_MEAS);

	// timer
	rcc_periph_clock_enable(RCC_TIM_MEAS);
	rcc_periph_reset_pulse(RST_TIM_MEAS);
	timer_set_mode(TIM_MEAS, TIM_CR1_CKD_CK_INT, TIM_CR1_CMS_EDGE, TIM_CR1_DIR_UP);
	timer_set_prescaler(TIM_MEAS, tim_meas_div-1); // running at 1MHz
	timer_disable_preload(TIM_MEAS);
	timer_continuous_mode(TIM_MEAS);
	timer_set_period(TIM_MEAS, 65535);
	timer_enable_counter(TIM_MEAS);

	// LED
	gpio_set_mode(LED_GPIO, GPIO_MODE_OUTPUT_2_MHZ, GPIO_CNF_OUTPUT_PUSHPULL, LED_PIN);
	gpio_clear(LED_GPIO, LED_PIN);
	for (volatile int i = 0; i<1000000; i++);
	gpio_set(LED_GPIO, LED_PIN);

	// USART
	gpio_set_mode(GPIOA, GPIO_MODE_OUTPUT_50_MHZ, GPIO_CNF_OUTPUT_ALTFN_PUSHPULL, GPIO9); // TX pin
	rcc_periph_clock_enable(RCC_USART_DEBUG);
	usart_set_baudrate(USART_DEBUG, 115200);
	usart_set_databits(USART_DEBUG, 8);
	usart_set_stopbits(USART_DEBUG, USART_STOPBITS_1);
	usart_set_mode(USART_DEBUG, USART_MODE_TX);
	usart_set_parity(USART_DEBUG, USART_PARITY_NONE);
	usart_set_flow_control(USART_DEBUG, USART_FLOWCONTROL_NONE);
	usart_enable(USART_DEBUG);
	printf("usart initialized\n");

	// SPI
	gpio_set_mode(GPIOB, GPIO_MODE_OUTPUT_50_MHZ, GPIO_CNF_OUTPUT_ALTFN_PUSHPULL, GPIO13); // PB13 = SPI2 SCK
	gpio_set_mode(DAC_SS_PORT, GPIO_MODE_OUTPUT_50_MHZ, GPIO_CNF_OUTPUT_PUSHPULL, DAC_SS_PIN); // PB12 := manual slave select for the DAC
	gpio_set_mode(GPIOB, GPIO_MODE_OUTPUT_50_MHZ, GPIO_CNF_OUTPUT_ALTFN_PUSHPULL, GPIO15); //PB15 = SPI2 MOSI
	rcc_periph_clock_enable(RCC_SPI_DAC);
	spi_reset(SPI_DAC);
	spi_init_master(SPI_DAC, SPI_CR1_BAUDRATE_FPCLK_DIV_32, SPI_CR1_CPOL_CLK_TO_0_WHEN_IDLE,SPI_CR1_CPHA_CLK_TRANSITION_1, SPI_CR1_DFF_16BIT, SPI_CR1_MSBFIRST);
	/*
	 * Set NSS management to software.
	 *
	 * Note:
	 * Setting nss high is very important, even if we are controlling the GPIO
	 * ourselves this bit needs to be at least set to 1, otherwise the spi
	 * peripheral will not send any data out.
	 */
	spi_enable_software_slave_management(SPI_DAC);
	spi_set_nss_high(SPI_DAC);

	spi_enable(SPI_DAC);


	// measure the frequencies at PROBE1 and PROBE2 in order to feed the expected_frequency() helper function
	init_frequency_expectations();


	play_note(0);
	play_note(100);
	play_note(4095);
	play_note(4095 - 100);


	measure_frequency_stability(110);
	measure_frequency_stability(220);
	measure_frequency_stability(440);
	measure_frequency_stability(880);
	measure_frequency_stability(1320);
	measure_frequency_stability(1760);


	while(true)
	for (int i=0; i<4096; i++)
	{
		int pitch_val = reverse_bits(i, 12);
		//int pitch_val = (i*64) % 4096;

		measure_frequency_at_codepoint(pitch_val, 5);

		// print the result
		printf("%4d %6d ", pitch_val, tim_meas_div);
		for (int i=0; i<measurement_count; i++)
			printf("  %8d %8d", measurements[i].low_time, measurements[i].high_time);
		printf("\n");
	}
	printf("end\n");
	panic();
}

