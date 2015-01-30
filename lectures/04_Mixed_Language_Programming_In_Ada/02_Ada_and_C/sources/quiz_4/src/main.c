#include <stdio.h>

extern void adainit(void);
extern void adafinal(void);
extern void procFromAda(unsigned* x);
extern unsigned objFromAda;

void main(void)
{
	adainit();
	objFromAda = 50;
	procFromAda(&objFromAda);
	adafinal();
}
