with C1P;
with C2P;
with Interfaces.C;

procedure Main is

	Concrete_1 : aliased C2P.Concrete;
	Return_Value : Interfaces.C.int;

begin

	C2P.P1(Concrete_1'access);
	Return_Value := C2P.P2(Concrete_1'access);

end Main;