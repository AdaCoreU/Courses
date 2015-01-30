#include "aclass.h"

AClass::AClass() : firstCharacter('A') {};
AClass::AClass(const char *name) : firstCharacter(*name) {};
AClass::~AClass() {};
char AClass::getFirstChar() { return firstCharacter; };
