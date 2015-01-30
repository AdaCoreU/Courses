package ALib is

	Ada_String : constant String := "Hello" & " World" with
		Convention    => C,
		Export        => True,
		External_Name => "adaString";

end ALib;