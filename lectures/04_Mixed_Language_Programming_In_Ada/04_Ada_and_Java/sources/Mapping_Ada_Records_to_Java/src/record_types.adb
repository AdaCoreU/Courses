package body Record_Types is

   function As_String(Obj : A_Nested_Record_Type)
      return String is
   begin
      return Obj.Integer_Field'Img;   
   end As_String;

end Record_Types;