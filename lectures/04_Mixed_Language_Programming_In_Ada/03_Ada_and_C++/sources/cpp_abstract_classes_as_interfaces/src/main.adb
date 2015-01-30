with I1P;
with I2P;
with Interfaces.C;
with ConcreteP;

procedure Main is
	Concrete_1 : aliased ConcreteP.Concrete;
	Return_Value : Interfaces.C.int;
begin
	ConcreteP.P1(Concrete_1'access);
	Return_Value := ConcreteP.P2(Concrete_1'access);
	ConcreteP.P3(Concrete_1'access);
end Main;