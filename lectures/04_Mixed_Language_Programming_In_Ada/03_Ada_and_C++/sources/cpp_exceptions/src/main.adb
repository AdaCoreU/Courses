with Interfaces.C.Extensions;
with Ada.Text_IO;

procedure Main is
	function IsOK return Interfaces.C.Extensions.Bool;
	pragma Import (CPP, isOK, "_Z4isOKv");
	Res : Interfaces.C.Extensions.Bool;
begin
	Res := isOK;
exception
	when others =>
		Ada.Text_IO.Put_Line("C++ Exception");
end Main;