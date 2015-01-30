with Interfaces.C;
package ALib is

	The_Length : constant Interfaces.C.size_t := 80 with
		Convention    => C,
		Export        => True,
		External_Name => "theLength";

end ALib;

