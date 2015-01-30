package body Q3 is

   procedure Set_Strings(
      The_Strings : in out Q3_Type
   ) is
   begin
      
      The_Strings :=
         Q3_Type'(
            1      => (others => 6),
            2      => (others => 5),
            3      => (others => 4),
            7      => (others => 3),
            20     => (others => 9),
            others => (others => 1)
         );
      
   end Set_Strings;

end Q3;