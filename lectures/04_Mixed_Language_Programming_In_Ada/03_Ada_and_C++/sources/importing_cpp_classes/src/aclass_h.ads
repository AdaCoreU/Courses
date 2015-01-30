pragma Ada_2005;
pragma Style_Checks (Off);

with Interfaces.C; use Interfaces.C;
with Interfaces.C.Strings;

package aclass_h is

   package Class_AClass is
      type AClass is limited record
         lastCharacter : aliased char;  -- aclass.h:8
         firstCharacter : aliased char;  -- aclass.h:10
      end record;
      pragma Import (CPP, AClass);

      function New_AClass (name : Interfaces.C.Strings.chars_ptr) return AClass;  -- aclass.cpp:3
      pragma CPP_Constructor (New_AClass, "_ZN6AClassC1EPKc");

      procedure Delete_AClass (this : access AClass);  -- aclass.cpp:8
      pragma Import (CPP, Delete_AClass, "_ZN6AClassD1Ev");
   end;
   use Class_AClass;
end aclass_h;
