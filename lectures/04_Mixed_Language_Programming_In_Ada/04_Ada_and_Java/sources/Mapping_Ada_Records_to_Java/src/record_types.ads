package Record_Types is

   type A_Nested_Record_Type is record
      Integer_Field : Integer;
   end record;

   type A_Record_Type is record
   
      Integer_Field : Integer;
      Float_Field : Float;

      Nested_Record : aliased A_Nested_Record_Type;

   end record;
   
   function As_String(Obj : A_Nested_Record_Type)
      return String;

end Record_Types;