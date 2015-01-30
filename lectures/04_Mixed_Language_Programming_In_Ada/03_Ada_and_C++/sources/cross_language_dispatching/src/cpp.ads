with Interfaces.C; use Interfaces.C;

package CPP is
   
   type Base is tagged limited record
      F : aliased int;
   end record;
   pragma Import (CPP, Base);

   function New_Base return Base;
   pragma CPP_Constructor (New_Base, "_ZN4BaseC1Ev");
   
   procedure P1 (this : access Base);
   pragma Import(CPP,P1, "_ZN4BaseC2Ev");

   procedure CPP_Cross_Call (obj : access Base'Class);  -- base.cpp:13
   pragma Import (CPP, CPP_Cross_Call, "_Z14CPP_Cross_CallP4Base");
  
   type A_Base_Access is access all Base'Class;
   
end CPP;
