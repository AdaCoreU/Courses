#include "base.h"
#include <iostream>

using namespace std;

Base::Base () {};

void Base::P1 ()
{
  cout << "P1 FROM C++" << endl;
};

void CPP_Cross_Call (Base * obj)
{
  cout << "DISPATCHING FROM C++" << endl;
  obj->P1();
}
