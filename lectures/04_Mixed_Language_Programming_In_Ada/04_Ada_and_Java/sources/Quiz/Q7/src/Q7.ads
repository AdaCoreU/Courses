package Q7 is

   type Print_CB is access procedure (Str : String);

   procedure Call_Back(Meth : Print_CB; Str : String);
   pragma Annotate (AJIS, Assume_Escaped, False, Call_Back, "Meth");

end Q7;