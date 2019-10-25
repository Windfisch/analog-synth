#include <libopencm3/stm32/spi.h>
#include <libopencm3/stm32/rcc.h>
#include <libopencm3/stm32/gpio.h>
#include <libopencm3/stm32/usart.h>
#include <libopencm3/stm32/exti.h>
#include <libopencm3/stm32/timer.h>
#include <libopencm3/cm3/nvic.h>

#include <stdio.h>

#include "hardware.h"
#include "setup.h"

void setup(void) {
	#ifdef STM32F1
	rcc_clock_setup_in_hse_8mhz_out_72mhz();
	#else
	rcc_clock_setup_pll(&rcc_hse_8mhz_3v3[RCC_CLOCK_3V3_84MHZ]);
	#endif

	#ifdef STM32F1
	rcc_periph_clock_enable(RCC_GPIOA); // USART
	rcc_periph_clock_enable(RCC_GPIOB); // EXTI, SPI2
	rcc_periph_clock_enable(RCC_GPIOC); // LED
	#else
	rcc_periph_clock_enable(RCC_GPIOA);
	rcc_periph_clock_enable(RCC_GPIOB);
	rcc_periph_clock_enable(RCC_GPIOC);
	rcc_periph_clock_enable(RCC_GPIOD);
	rcc_periph_clock_enable(RCC_GPIOE);
	rcc_periph_clock_enable(RCC_SYSCFG); // for interrupts
	#endif
	
	// interrupt pin
	nvic_enable_irq(NVIC_EXTI_MEAS_IRQ);

	#ifdef STM32F1
	gpio_set_mode(EXTI_MEAS_GPIO, GPIO_MODE_INPUT, GPIO_CNF_INPUT_FLOAT, EXTI_MEAS_PIN);
	#else
	gpio_mode_setup(EXTI_MEAS_GPIO, GPIO_MODE_INPUT, GPIO_PUPD_NONE, EXTI_MEAS_PIN);
	#endif
	exti_select_source(EXTI_MEAS, EXTI_MEAS_GPIO);
	exti_set_trigger(EXTI_MEAS, EXTI_TRIGGER_RISING);
	exti_enable_request(EXTI_MEAS);

	// timer
	rcc_periph_clock_enable(RCC_TIM_MEAS);
	rcc_periph_reset_pulse(RST_TIM_MEAS);
	timer_set_mode(TIM_MEAS, TIM_CR1_CKD_CK_INT, TIM_CR1_CMS_EDGE, TIM_CR1_DIR_UP);
	timer_set_prescaler(TIM_MEAS, 1-1);
	timer_disable_preload(TIM_MEAS);
	timer_continuous_mode(TIM_MEAS);
	timer_set_period(TIM_MEAS, 65535);
	timer_enable_counter(TIM_MEAS);

	// LED
	#ifdef STM32F1
	gpio_set_mode(LED_GPIO, GPIO_MODE_OUTPUT_2_MHZ, GPIO_CNF_OUTPUT_PUSHPULL, LED_PIN);
	#else
	gpio_mode_setup(LED_GPIO, GPIO_MODE_OUTPUT, GPIO_PUPD_NONE, LED_PIN);
	#endif

	// USART
	#ifdef STM32F1
	gpio_set_mode(GPIOA, GPIO_MODE_OUTPUT_50_MHZ, GPIO_CNF_OUTPUT_ALTFN_PUSHPULL, GPIO9); // TX pin
	#else
	gpio_mode_setup(GPIOA, GPIO_MODE_AF, GPIO_PUPD_NONE, GPIO2); // TX Pin
	gpio_set_af(GPIOA, GPIO_AF7, GPIO2);
	#endif
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
	#ifdef STM32F1
	gpio_set_mode(GPIOB, GPIO_MODE_OUTPUT_50_MHZ, GPIO_CNF_OUTPUT_ALTFN_PUSHPULL, GPIO13); // PB13 = SPI2 SCK
	gpio_set_mode(DAC_SS_PORT, GPIO_MODE_OUTPUT_50_MHZ, GPIO_CNF_OUTPUT_PUSHPULL, DAC_SS_PIN); // PB12 := manual slave select for the DAC
	gpio_set_mode(GPIOB, GPIO_MODE_OUTPUT_50_MHZ, GPIO_CNF_OUTPUT_ALTFN_PUSHPULL, GPIO15); //PB15 = SPI2 MOSI
	gpio_set_mode(BUF_LD_PORT, GPIO_MODE_OUTPUT_50_MHZ, GPIO_CNF_OUTPUT_PUSHPULL, BUF_LD_PIN); //PB14 = buf load data pin
	#else
	gpio_mode_setup(GPIOE, GPIO_MODE_AF, GPIO_PUPD_NONE, GPIO12);
	gpio_mode_setup(DAC_SS_PORT, GPIO_MODE_OUTPUT, GPIO_PUPD_NONE, DAC_SS_PIN); // slave select
	gpio_mode_setup(BUF_LD_PORT, GPIO_MODE_OUTPUT, GPIO_PUPD_NONE, BUF_LD_PIN); // slave select
	gpio_mode_setup(GPIOE, GPIO_MODE_AF, GPIO_PUPD_NONE, GPIO14);
	gpio_set_af(GPIOE, GPIO_AF5, GPIO12);
	gpio_set_af(GPIOE, GPIO_AF5, GPIO14);
	#endif
	rcc_periph_clock_enable(RCC_SPI_DAC);
	spi_reset(SPI_DAC);
	spi_init_master(SPI_DAC, SPI_CR1_BAUDRATE_FPCLK_DIV_32, SPI_CR1_CPOL_CLK_TO_0_WHEN_IDLE,SPI_CR1_CPHA_CLK_TRANSITION_1, SPI_CR1_DFF_16BIT, SPI_CR1_MSBFIRST);
	
	// Set NSS management to software. (Even if we are controlling the GPIO
	// ourselves. Otherwise the spi peripheral will not send any data out.
	spi_enable_software_slave_management(SPI_DAC);
	spi_set_nss_high(SPI_DAC);

	spi_enable(SPI_DAC);
}
