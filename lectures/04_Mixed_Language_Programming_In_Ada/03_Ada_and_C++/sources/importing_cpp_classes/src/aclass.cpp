#include "aclass.h"
#include <iostream>

AClass::AClass(const char *name)
{
	std::cout << "AClass::AClass" << std::endl;
}

AClass::~AClass()
{
	std::cout << "AClass::~AClass" << std::endl;
}
