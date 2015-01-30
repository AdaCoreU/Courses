with Interfaces.C;
with C1P;

package C2P is

	use C1P;

	type Concrete is limited new C1P.Base with record
		null;
	end record;

	procedure P1 (this : access Concrete);
	function P2 (this : access Concrete) return Interfaces.C.int;

end C2P;