#include <stdio.h>

extern size_t getLength(void);

void main(void)
{
	printf("%d\n", getLength());
}
