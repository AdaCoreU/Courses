with Interfaces.C;

package I1P is

	type I1 is limited interface; 
	procedure P1 (this : access I1) is abstract;
	function P2 (this : access I1) return Interfaces.C.int is abstract;

end I1P;
