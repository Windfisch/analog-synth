	#ifdef STM32F103C8T

// blue pill aka STM32F103C8T

#define MCU_CLOCK  72000000 // 72 MHz

#define USART_DEBUG USART1
#define RCC_USART_DEBUG RCC_USART1

#define TIM_MEAS TIM2
#define RCC_TIM_MEAS RCC_TIM2
#define RST_TIM_MEAS RST_TIM2

// USB: PA11 and PA12

#define EXTI_MEAS EXTI15
#define EXTI_MEAS_PIN GPIO15
#define EXTI_MEAS_GPIO GPIOA
#define exti_meas_isr exti15_10_isr
#define NVIC_EXTI_MEAS_IRQ NVIC_EXTI15_10_IRQ


#define LED_GPIO GPIOC
#define LED_PIN GPIO13

// The SPI bus with the DAC
#define DAC_SS_PORT GPIOB
#define DAC_SS_PIN GPIO12

#define BUF_LD_PORT GPIOB
#define BUF_LD_PIN GPIO14

#define SPI_DAC SPI2 // using PB13==clock and PB15==mosi
#define RCC_SPI_DAC RCC_SPI2

#elif defined(STM32F411RE)

// STM32F411 discovery

#define MCU_CLOCK  84000000 // 72 MHz

#define USART_DEBUG USART2
#define RCC_USART_DEBUG RCC_USART2

#define TIM_MEAS TIM2
#define RCC_TIM_MEAS RCC_TIM2
#define RST_TIM_MEAS RST_TIM2

#define EXTI_MEAS EXTI7
#define EXTI_MEAS_PIN GPIO7
#define EXTI_MEAS_GPIO GPIOE
#define exti_meas_isr exti9_5_isr
#define NVIC_EXTI_MEAS_IRQ NVIC_EXTI9_5_IRQ


#define LED_GPIO GPIOD
#define LED_PIN GPIO12

// The SPI bus with the DAC
#define DAC_SS_PORT GPIOE
#define DAC_SS_PIN GPIO13

#define SPI_DAC SPI4 // using PE12 and PE14 as SCK/MOSI
#define RCC_SPI_DAC RCC_SPI4

#endif
