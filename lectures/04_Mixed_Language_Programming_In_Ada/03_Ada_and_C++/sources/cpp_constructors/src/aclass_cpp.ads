pragma Ada_2005;
pragma Style_Checks (Off);

with Interfaces.C; use Interfaces.C;

package aclass_cpp is

	package Class_AClass is
		type AClass is limited record
			lastCharacter : aliased char;  -- aclass.cpp:7
		end record;
		pragma Import (CPP, AClass);

		function New_AClass return AClass;  -- aclass.cpp:4
		pragma CPP_Constructor (New_AClass, "_ZN6AClassC1Ev");

		function getCharacter (this : access AClass) return char;  -- aclass.cpp:5
		pragma Import (CPP, getCharacter, "_ZN6AClass12getCharacterEv");
	end;
	use Class_AClass;
end aclass_cpp;
