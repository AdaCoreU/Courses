with Interfaces.C;
package ALib is

	function Get_Length return Interfaces.C.size_t with
		Convention    => C,
		Export        => True,
		External_Name => "getLength";

end ALib;
