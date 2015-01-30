with Interfaces.C.Strings;
with Ada.Text_IO;

procedure Main is

	C_String : Interfaces.C.Strings.chars_ptr with
		Convention    => C,
		Import        => True,
		External_Name => "cString";

begin
	Ada.Text_IO.Put_Line(Interfaces.C.Strings.Value(C_String));
end Main;
