#include "aclass.h"

AClass::AClass() : lastCharacter('A') {}

char AClass::getCharacter(void) {
	return this->lastCharacter;
}