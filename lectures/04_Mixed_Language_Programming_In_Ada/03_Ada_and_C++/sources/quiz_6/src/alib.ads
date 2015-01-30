with Interfaces.C;

package ALib is

	type Base is limited interface; 
	procedure P1 (this : access Base) is abstract;
	function P2 (this : access Base) return Interfaces.C.int is abstract;

end ALib;