package Q9 is

   type Parent_Type is abstract tagged record
      A_Field : Integer;
   end record;
   procedure Print_Me (V : Parent_Type; Me : String) is abstract;

   type Child_Type is abstract new Parent_Type with record
      Another_Field : Boolean := False;
   end record;

end Q9;