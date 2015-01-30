#include <stdio.h>

void c_function(size_t *x)
{
	printf("%d\n", *x);
}

void (*func)(size_t *x) = c_function;
