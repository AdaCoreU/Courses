with Interfaces.C; use Interfaces.C;

package CPP is

	type Base is tagged limited record
		F : aliased int;
	end record;
	pragma Import (CPP, Base);

	function New_Base return Base;
	pragma CPP_Constructor (New_Base, "_ZN4BaseC1Ev");

	procedure P1 (this : access Base);
	pragma Import(CPP,P1, "_ZN4Base2P1Ev");

end CPP;
