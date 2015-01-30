#include <iostream>
#include "dog.h"

extern "C" {
	Animal* new_animal();
}

Dog::Dog() : m_animal(new_animal()) {}

void Dog::writeAge(void) { 
	std::cout << this->m_animal->age() << std::endl;
}