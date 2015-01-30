#include "dog.h"

extern "C" {
	void adainit (void);
	void adafinal (void);
}

int main(void) {
	adainit();
	Dog* theDog = new Dog();
	theDog->writeAge();
	adafinal();
	return 0;
};
