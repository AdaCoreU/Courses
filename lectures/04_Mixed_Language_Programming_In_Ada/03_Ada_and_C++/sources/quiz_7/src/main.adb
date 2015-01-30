with Interfaces.C;
with Ada.Text_IO;

procedure Main is

	type AClass is limited record
		m_attribute : Interfaces.C.int;
	end record;
	pragma Import(CPP,AClass);
   
	function AClass_Constructor return AClass;
	pragma CPP_Constructor(AClass_Constructor, "_ZN6AClassC1Ev");
   
	X : AClass;
	--Y : AClass := X;
	-- uncomment me to see the error

begin
	Ada.Text_IO.Put_Line(Integer(X.m_attribute)'img);
end Main;
