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


// allow printf() to use the USART
int _write(int file, char *ptr, int len)
{
	int i;

	if (file == STDOUT_FILENO || file == STDERR_FILENO) {
		for (i = 0; i < len; i++) {
			if (ptr[i] == '\n') {
				usart_send_blocking(USART2, '\r');
			}
			usart_send_blocking(USART2, ptr[i]);
		}
		return i;
	}
	errno = EIO;
	return -1;
}

volatile int voltage_val;
volatile enum { IDLE, WAITING, RUNNING } timer_state = IDLE;
volatile uint16_t timer_start;
volatile uint16_t timer_last;
volatile uint32_t timer_count;

void exti9_5_isr()
{
	uint16_t timer_val = timer_get_counter(TIM2);
	if (exti_get_flag_status(EXTI7))
	{
		exti_reset_request(EXTI7);
		switch(timer_state)
		{
			case WAITING:
				timer_start = timer_val;
				timer_last = timer_val;
				timer_count = 0;
				timer_state = RUNNING;
				break;
			case RUNNING:
			{
				uint16_t elapsed = timer_val - timer_start; // this may underflow. this is fine.

				if (elapsed > 2000)
				{
					timer_state = IDLE;
					uint16_t last_elapsed = timer_last-timer_start;
					int freq = timer_count * 10000 / last_elapsed;
					//printf("measurement complete. %d periods in %d / 10 ms. that's %7.2d Hz\n", timer_count, last_elapsed, freq);
					printf("%4d %10d %10d\n", voltage_val, timer_count, last_elapsed);

				}
				else
				{
					timer_last = timer_val;
					timer_count++;
				}
			}

		}
		//printf("exti7! %d\n", timer_val);
	}
	else
	{
		//printf("exti???\n");
	}
}


void play_note(int code)
{
	gpio_clear(GPIOE, GPIO13); // slave select low
	spi_xfer(SPI4, 0x0000 | 0x3000 | code);
	gpio_set(GPIOE, GPIO13); // slave select high

	for (volatile int i=0; i<100000; i++);
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

int main(void) {
	rcc_clock_setup_pll(&rcc_hse_8mhz_3v3[RCC_CLOCK_3V3_84MHZ]);

	rcc_periph_clock_enable(RCC_GPIOE); // SPI4 for the dac
	rcc_periph_clock_enable(RCC_GPIOA); // USART
	rcc_periph_clock_enable(RCC_GPIOD); // LED
	rcc_periph_clock_enable(RCC_SYSCFG); // for interrupts
	
	// interrupt pin
	nvic_enable_irq(NVIC_EXTI9_5_IRQ);
	gpio_mode_setup(GPIOE, GPIO_MODE_INPUT, GPIO_PUPD_NONE, GPIO7);
	exti_select_source(EXTI7, GPIOE);
	exti_set_trigger(EXTI7, EXTI_TRIGGER_RISING);
	exti_enable_request(EXTI7);

	// timer
	rcc_periph_clock_enable(RCC_TIM2);
	rcc_periph_reset_pulse(RST_TIM2);
	timer_set_mode(TIM2, TIM_CR1_CKD_CK_INT, TIM_CR1_CMS_EDGE, TIM_CR1_DIR_UP);
	timer_set_prescaler(TIM2, 7800);
	timer_disable_preload(TIM2);
	timer_continuous_mode(TIM2);
	timer_set_period(TIM2, 65535);
	timer_enable_counter(TIM2);

	// LED
	gpio_mode_setup(GPIOD, GPIO_MODE_OUTPUT, GPIO_PUPD_NONE, GPIO12);

	// USART
	gpio_mode_setup(GPIOA, GPIO_MODE_AF, GPIO_PUPD_NONE, GPIO2); // TX Pin
	gpio_set_af(GPIOA, GPIO_AF7, GPIO2);
	rcc_periph_clock_enable(RCC_USART2);
	usart_set_baudrate(USART2, 115200);
	usart_set_databits(USART2, 8);
	usart_set_stopbits(USART2, USART_STOPBITS_1);
	usart_set_mode(USART2, USART_MODE_TX);
	usart_set_parity(USART2, USART_PARITY_NONE);
	usart_set_flow_control(USART2, USART_FLOWCONTROL_NONE);
	usart_enable(USART2);

	// SPI
	gpio_mode_setup(GPIOE, GPIO_MODE_AF, GPIO_PUPD_NONE, GPIO12);
	gpio_mode_setup(GPIOE, GPIO_MODE_OUTPUT, GPIO_PUPD_NONE, GPIO13); // slave select
	gpio_mode_setup(GPIOE, GPIO_MODE_AF, GPIO_PUPD_NONE, GPIO14);
	gpio_set_af(GPIOE, GPIO_AF5, GPIO12);
	gpio_set_af(GPIOE, GPIO_AF5, GPIO14);
	rcc_periph_clock_enable(RCC_SPI4);
	spi_reset(SPI4);
	spi_init_master(SPI4, SPI_CR1_BAUDRATE_FPCLK_DIV_32, SPI_CR1_CPOL_CLK_TO_0_WHEN_IDLE,SPI_CR1_CPHA_CLK_TRANSITION_1, SPI_CR1_DFF_16BIT, SPI_CR1_MSBFIRST);
	/*
	 * Set NSS management to software.
	 *
	 * Note:
	 * Setting nss high is very important, even if we are controlling the GPIO
	 * ourselves this bit needs to be at least set to 1, otherwise the spi
	 * peripheral will not send any data out.
	 */
	spi_enable_software_slave_management(SPI4);
	spi_set_nss_high(SPI4);

	spi_enable(SPI4);

while(1)
	for (int i=0; i<4096; i++)
	{
		int pitch_val = reverse_bits(i, 12);

		gpio_clear(GPIOE, GPIO13); // slave select low
		spi_xfer(SPI4, 0x0000 | 0x3000 | pitch_val);
		gpio_set(GPIOE, GPIO13); // slave select high

		voltage_val = pitch_val;
		
		for (volatile int j=0; j<300000; j++); // wait a bit

		timer_state = WAITING;
		//printf("%d\n",i);
		while (timer_state != IDLE); // wait for the measurement to complete. the ISR will print the result
	}

	#define DAC_STEPS_PER_VOLT 2000
	//int music[] = { 0, 2, 4, 5, 7, 5, 4, 2, 0, 0, 0, 0, 12, 12, 12, 12 };
	//int music[] = {0,0,0,0,12,12,12,12};
	int music[] = {
		0, 0, -5, -4,    -2, -2, -4, -5,
		-7, -7, -7, -4,   0, 0, -2, -4, 
		-5, -5, -5, -4,   -2, -2, 0, 0, 
		-4, -4, -7, -7,   -7, -7, -7, -7};
	int retrig[] = {
		1, 0, 1, 1,   1, 0, 1, 1,
		1, 0, 1, 1,   1, 0, 1, 1, 
		1, 0, 0, 1,   1, 0, 1, 0, 
		1, 0, 1, 0,   1, 0, 0, 0
	};
	#define MUSIC_LEN (sizeof(music)/sizeof(music[0]))
	#define MUSIC_OFFSET (12+7)
	#define MUSIC_V_PER_OCT 1



	play_note(0);
	play_note(2000/5);
	play_note(4095);
	play_note(4095 - 2000/5);


	int pos = 0;
	int iter = 1000001;
	int env_pos = 0;
	int pitch_val;
	while (1) {
		if (iter >= 20000)
		{
			// play next note
			gpio_toggle(GPIOD, GPIO12);	/* LED on/off */
			usart_send_blocking(USART2, pos + 'a'); /* USART2: Send byte. */
			printf(" %d %d\n", music[pos], retrig[pos]);


			pitch_val = (music[pos] + MUSIC_OFFSET) * MUSIC_V_PER_OCT * DAC_STEPS_PER_VOLT / 12;
			if (pitch_val < 0)
			{
				pitch_val = 0;
				usart_send_blocking(USART2, '<');
			}
			else if (pitch_val >= 4096)
			{
				pitch_val = 4095;
				usart_send_blocking(USART2, '>');
			}

			if (retrig[pos])
				env_pos = 0;
		
			gpio_clear(GPIOE, GPIO13); // slave select low
			spi_xfer(SPI4, 0x0000 | 0x3000 | pitch_val);
			gpio_set(GPIOE, GPIO13); // slave select high

			timer_state = WAITING;
		
			pos = (pos + 1) % MUSIC_LEN;
			iter = 0;
		}

		env_pos += 1;
		int env_val = env_pos*4095/80000;
		if (env_val < 0) env_val = 0;
		if (env_val >= 4096) env_val = 4095;
		
		gpio_clear(GPIOE, GPIO13); // slave select low
		spi_xfer(SPI4, 0x8000 | 0x3000 | env_val);
		gpio_set(GPIOE, GPIO13); // slave select high

		iter++;
	}

}
