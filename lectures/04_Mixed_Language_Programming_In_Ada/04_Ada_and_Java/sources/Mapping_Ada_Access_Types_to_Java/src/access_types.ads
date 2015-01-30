package Access_Types is

   type Target_Length is record
      Value : Positive;
   end record;

   type Access_Length is access all Target_Length;

   procedure Use_Access_Type(Obj : in Access_Length);
   -- Uncomment the following line to ensure Object Ownership for Obj is disabled
   --pragma Annotate (AJIS, Assume_Escaped, False, Use_Access_Type, "Obj");

end Access_Types;