#include <stdio.h>

extern char* someStrings[];
extern void adainit();
extern void adafinal();

void main(void) {

	adainit();

	int i = 0;
	while (NULL != someStrings[i])
	{
		printf("%s ", someStrings[i]);
		i++;
	}

	adafinal();
};
