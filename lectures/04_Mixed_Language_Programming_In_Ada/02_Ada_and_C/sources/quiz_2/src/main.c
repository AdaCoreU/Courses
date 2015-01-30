#include <stdio.h>

extern void adainit(void);
extern void adafinal(void);
extern size_t getLength(void);

void main(void)
{
	adainit();
	printf("%d\n", getLength());
	adafinal();
}
