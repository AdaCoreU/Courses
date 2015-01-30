with Interfaces.C; with Ada.Text_IO;
procedure Main is

	function Get_Length return Interfaces.C.size_t with
		Convention    => C,
		Import        => True,
		External_Name => "getlength";

begin
	Ada.Text_IO.Put_Line(Get_Length'Img);
end Main;
