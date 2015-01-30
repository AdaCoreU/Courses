with Interfaces.C;

procedure Main is

	function getRef return Interfaces.C.int;
	pragma Import(CPP, getRef, "_Z6getRefv");

	X : Interfaces.C.int := getRef;

begin
	null;
end Main;
