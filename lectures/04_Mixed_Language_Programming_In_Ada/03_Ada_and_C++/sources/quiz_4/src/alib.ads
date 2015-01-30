with Interfaces.C;

package ALib is

	type C1 is abstract tagged limited record
		F : aliased Interfaces.C.int;
	end record;

	procedure P1 (this : access C1) is abstract;
	function P2 (this : access C1) return Interfaces.C.int; 

end ALib;