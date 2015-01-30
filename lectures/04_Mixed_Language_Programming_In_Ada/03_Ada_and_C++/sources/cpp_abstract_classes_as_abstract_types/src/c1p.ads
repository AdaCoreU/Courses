with Interfaces.C;

package C1P is

	type Base is abstract tagged limited record
		F : aliased Interfaces.C.int;
	end record;

	procedure P1 (this : access Base) is abstract;
	function P2 (this : access Base) return Interfaces.C.int;

end C1P;