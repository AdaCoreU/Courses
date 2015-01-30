package Q10 is

   type Java_CB is access procedure (Str : String);

   procedure Call_Back(Meth : Java_CB; Str : String);
   pragma Annotate (AJIS, Assume_Escaped, False, Call_Back, "Meth");

end Q10;
