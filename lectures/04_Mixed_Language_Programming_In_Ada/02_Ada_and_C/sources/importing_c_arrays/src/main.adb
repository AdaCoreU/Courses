with Interfaces.C;
with Ada.Text_IO;

procedure Main is

	type C_Array_Type is array(1..4) of Interfaces.C.size_t;
	package Size_T_IO is new Ada.Text_IO.Modular_IO(Num => Interfaces.C.size_t);

	C_Array : C_Array_Type with
		Convention    => C,
		Import        => True,
		External_Name => "c_array";

begin
	for I in C_Array'Range loop
		Size_T_IO.Put(
			Item  => C_Array(I),
			Base  => 16
		);
		Ada.Text_IO.New_Line;
	end loop;
end Main;
