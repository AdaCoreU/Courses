#include "clib.h"

void function1(void* x)
{
	if (0 != x)
	{
	};
}

void* function2(void)
{
	return (void*)0x12345678;
}

char* function3(char** j)
{
	if (0 != j)
	{
		return *j;
	} else
	{
		return 0;
	}
}