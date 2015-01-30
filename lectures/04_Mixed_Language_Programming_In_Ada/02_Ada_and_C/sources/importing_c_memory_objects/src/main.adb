with Interfaces.C;
with Ada.Text_IO;

procedure Main is

	The_Length : Interfaces.C.size_t with
		Convention    => C,
		Import        => True,
		External_Name => "theLength";

begin
	Ada.Text_IO.Put_Line(The_Length'Img);
end Main;
