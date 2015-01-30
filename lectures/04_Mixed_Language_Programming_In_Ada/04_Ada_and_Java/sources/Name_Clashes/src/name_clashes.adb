package body Name_Clashes is

   function F return I1 is
   begin
      return I1'First;
   end F;
   
   function F return I2 is
   begin
      return I2'Last;
   end F;
   
end Name_Clashes;