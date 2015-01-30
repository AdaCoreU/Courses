#include <iostream>
#include "animal.h"

extern "C" {
	void adainit (void);
	void adafinal (void);
	Animal* new_animal();
}

int main(void) {
	adainit();
	std::cout << new_animal()->age() << std::endl;
	adafinal();
	return 0;
};
