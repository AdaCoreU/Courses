package Q4 is

   type Target is record
      Value : Positive := 20;
   end record;

   type Access_Target is not null access all Target;

   procedure Print_Target(Obj : Access_Target);
   pragma Annotate (AJIS, Assume_Escaped, False, Print_Target, "Obj");

end Q4;