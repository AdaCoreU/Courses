package Q8 is

   type I2 is new Integer;

   function F return Integer;

   function F return I2;
   pragma Annotate (AJIS, Rename, F, "F_I2");

end Q8;
