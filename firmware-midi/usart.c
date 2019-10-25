#include <unistd.h>
#include <errno.h>
#include <hardware.h>
#include <libopencm3/stm32/usart.h>

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

