#include <stdio.h>

extern void adafinal(void);
extern void adainit(void);
extern char* someStrings[];

void main(void)
{
	adainit();
	int i = 0;
	while (NULL != someStrings[i])
	{
		printf("%s ", someStrings[i]);
		i++;
	}
	adafinal();
};
