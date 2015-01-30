package Name_Clashes is
   type I1 is new Integer;
   type I2 is new Integer;

   function F return I1;
   -- Uncomment following line to avoid warning
   --pragma Annotate (AJIS, Rename, F, "F_I1");
   
   function F return I2;
   -- Uncomment following line to avoid warning
   --pragma Annotate (AJIS, Rename, F, "F_I2");
end Name_Clashes;


