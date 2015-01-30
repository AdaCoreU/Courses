with Interfaces.C;
with Interfaces.C.Strings;
with System;
with clib_h;

procedure Main is

	use clib_h;

	Return_Value1 : System.Address := function2;
	Return_Value2 : Interfaces.C.Strings.chars_ptr := function3(System.Null_Address);

begin

	function1(System.Null_Address);

end Main;