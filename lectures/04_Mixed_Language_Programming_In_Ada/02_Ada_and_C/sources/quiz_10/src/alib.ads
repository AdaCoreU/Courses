with Interfaces.C.Strings;

package ALib is

	My_Strings : constant 
		Interfaces.C.Strings.chars_ptr_array(1..4) := ( 
			1 => Interfaces.C.Strings.New_String("Hello"),
			2 => Interfaces.C.Strings.New_String("World"),
			3 => Interfaces.C.Strings.Null_Ptr,
			4 => Interfaces.C.Strings.New_String("End")
		) with
		Convention    => C,
		Export        => True,
		External_Name => "someStrings";

end ALib;
