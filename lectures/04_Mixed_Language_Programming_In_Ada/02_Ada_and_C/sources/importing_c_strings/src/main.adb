with Interfaces.C.Strings;
with Ada.Text_IO;

procedure Main is

	use Interfaces.C.Strings;
	use Ada.Text_IO;

	function Get_String return chars_ptr with
		Convention    => C,
		Import        => True,
		External_Name => "getString";

begin
	Put_Line(Interfaces.C.Strings.Value(Get_String));
end Main;
