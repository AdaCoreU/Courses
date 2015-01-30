with Interfaces.C;

procedure Main is

	type AClass is limited record
		m_attribute : Interfaces.C.int;
	end record;
	pragma Import(CPP,AClass);

	function New_AClass return AClass;
	pragma CPP_Constructor(New_AClass, "_ZN6AClassC1Ev");

	function AClass_Constructor return AClass;
	pragma Import(CPP, AClass_Constructor, "_ZN6AClassC1Ev");

	X : AClass;

begin
	null;
end Main;
