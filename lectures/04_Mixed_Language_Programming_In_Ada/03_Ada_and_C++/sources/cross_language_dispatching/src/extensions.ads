with CPP; use CPP;

package Extensions is

   type Child is limited new Base with record
      F2 : Integer;
   end record;

   overriding 
   procedure P1 (This : access Child);
   
   procedure Ada_Cross_Call (This : access Base'Class);
  
end Extensions;
