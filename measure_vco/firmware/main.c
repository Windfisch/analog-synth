#include <stdint.h>

#include <libopencm3/stm32/spi.h>
#include <libopencm3/stm32/rcc.h>
#include <libopencm3/stm32/gpio.h>
#include <libopencm3/stm32/usart.h>

int main(void) {
	rcc_clock_setup_pll(&rcc_hse_8mhz_3v3[RCC_CLOCK_3V3_84MHZ]);

	rcc_periph_clock_enable(RCC_GPIOE); // SPI4 for the dac
	rcc_periph_clock_enable(RCC_GPIOA); // USART
	rcc_periph_clock_enable(RCC_GPIOD); // LED


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

	#define DAC_STEPS_PER_VOLT 2000
	//int music[] = { 0, 2, 4, 5, 7, 5, 4, 2, 0, 0, 0, 0, 12, 12, 12, 12 };
	//int music[] = {0,0,0,0,12,12,12,12};
	int music[] = {
		0, 0, -5, -4,    -2, -2, -4, -5,
		-7, -7, -7, -4,   0, 0, -2, -4, 
		-5, -5, -5, -4,   -2, -2, 0, 0, 
		-4, -4, -7, -7,   -7, -7, -7, -7};
	#define MUSIC_LEN (sizeof(music)/sizeof(music[0]))
	#define MUSIC_OFFSET (12+7)
	#define MUSIC_V_PER_OCT 1

	int pos = 0;
	while (1) {
		gpio_toggle(GPIOD, GPIO12);	/* LED on/off */
		usart_send_blocking(USART2, pos + 'a'); /* USART2: Send byte. */


		int value = (music[pos] + MUSIC_OFFSET) * MUSIC_V_PER_OCT * DAC_STEPS_PER_VOLT / 12;
		if (value < 0)
		{
			value = 0;
			usart_send_blocking(USART2, '<');
		}
		else if (value >= 4096)
		{
			value = 4095;
			usart_send_blocking(USART2, '>');
		}

		gpio_clear(GPIOE, GPIO13); // slave select low
		spi_xfer(SPI4, 0x3000 | value);
		gpio_set(GPIOE, GPIO13); // slave select high

		for (volatile uint64_t i = 0; i < 1000000; i++) {	/* Wait a bit. */
			__asm__("NOP");
		}
		
		pos = (pos + 1) % MUSIC_LEN;
	}

}
