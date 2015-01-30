with Interfaces.C;

procedure Main is

	type Size_T_Ptr is access all Interfaces.C.size_t;
	type C_Function_Ptr is access procedure (X : Size_T_Ptr);

	A_Size_T : Size_T_Ptr := new Interfaces.C.size_t'(10);

	A_C_Func : C_Function_Ptr with
		Convention    => C,
		Import        => True,
		External_Name => "func";

begin
	A_C_func.all(X => A_Size_T);
end Main;
