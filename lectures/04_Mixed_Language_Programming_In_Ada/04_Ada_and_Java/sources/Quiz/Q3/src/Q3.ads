package Q3 is

   type Nested_Array is array(1..30) of Natural;

   type Q3_Type is array(1..20) of aliased Nested_Array;

   procedure Set_Strings(
      The_Strings : in out Q3_Type
   );

end Q3;