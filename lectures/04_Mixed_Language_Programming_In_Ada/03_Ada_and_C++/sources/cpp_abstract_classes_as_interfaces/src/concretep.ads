with I1P;
with I2P;
with Interfaces.C;

package ConcreteP is

	type Concrete is limited new I1P.I1 and I2P.I2 with record
		null;
	end record;

	procedure P1 (this : access Concrete);
	function P2 (this : access Concrete) return Interfaces.C.int;
	procedure P3 (this : access Concrete);

end ConcreteP;