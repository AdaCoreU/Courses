#include <stdio.h>

extern void adainit(void);
extern void adafinal(void);
extern char* adaString;

void main(void)
{
	adainit();
	printf("%s\n", &adaString);
	adafinal();
};
