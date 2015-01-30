with Interfaces.C;
package ALib is

	Exported_Object : aliased Interfaces.C.unsigned with
		Convention    => C,
		Export        => True,
	External_Name => "objFromAda";

	type ObjPtr is access all Interfaces.C.unsigned with
		Convention    => C;

	procedure Output_Object(Obj : ObjPtr) with
		Convention    => C,
		Export        => True,
		External_Name => "procFromAda";

end ALib;
