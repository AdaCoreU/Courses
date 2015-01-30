with Interfaces.C.Pointers;
with Ada.Text_IO;

procedure Main is

	type Index is range 1..30;
	type Element_Array is array(Index range <>) of aliased Interfaces.C.unsigned;

	package Obj_Ptr is new 
		Interfaces.C.Pointers(
			Index              => Index,
			Element            => Interfaces.C.unsigned,
			Element_Array      => Element_Array,
			Default_Terminator => Interfaces.C.unsigned'(9999)
	);

	C_Array : aliased Interfaces.C.unsigned with 
		Convention    => C,
		Import        => True,
		External_Name => "cArray";

	My_Array : Element_Array := Obj_Ptr.Value(C_Array'Access);

begin
	for I in My_Array'Range loop
		exit when Interfaces.C."="(9999,My_Array(I));
		Ada.Text_IO.Put_Line(My_Array(I)'Img);
	end loop;
end Main;
