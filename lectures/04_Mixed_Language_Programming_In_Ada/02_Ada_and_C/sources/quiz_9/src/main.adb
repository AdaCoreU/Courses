with Interfaces.C.Strings; use Interfaces.C.Strings;
with Ada.Text_IO; use Ada.Text_IO;

procedure Main is

	function Get_String return char_array_access with
		Convention    => C,
		Import        => True,
		External_Name => "getString";

begin

	Put_Line(
		Interfaces.C.Strings.Value(
			Interfaces.C.Strings.To_Chars_Ptr(Get_String)
		)
	);

end Main;
