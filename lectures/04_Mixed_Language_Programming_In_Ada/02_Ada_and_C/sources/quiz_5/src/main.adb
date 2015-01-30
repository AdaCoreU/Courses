with Interfaces.C; with Ada.Text_IO;
procedure Main is

	type ObjPtr is access all Interfaces.C.unsigned;
	type ObjPtr_Array is array(Positive range <>) of aliased Interfaces.C.unsigned;

	My_Array : aliased ObjPtr_Array(1..30) with 
		Convention    => C,
		Import        => True,
		External_Name => "myArray";

	My_Ptr : ObjPtr := My_Array(1)'Access;

begin

	for I in My_Array'Range loop

		My_Ptr := My_Array(I)'Access;

		exit when Interfaces.C."="(9999,My_Ptr.all);

		Ada.Text_IO.Put_Line(My_Ptr.all'Img);

	end loop;

end Main;
