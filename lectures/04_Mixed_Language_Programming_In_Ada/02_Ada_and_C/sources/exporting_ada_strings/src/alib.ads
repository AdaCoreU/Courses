with Interfaces.C.Strings;

package ALib is

	My_Strings : constant 
		Interfaces.C.Strings.chars_ptr_array(1..2) := ( 
			1 => Interfaces.C.Strings.New_String("Hello World"),
			2 => Interfaces.C.Strings.Null_Ptr
		) with
		Convention    => C,
		Export        => True,
		External_Name => "someStrings";

end ALib;
