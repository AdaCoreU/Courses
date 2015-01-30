package body Q10 is

   procedure Call_Back(Meth : Java_CB; Str : String) is
   begin
      Meth(Str);
   end Call_Back;

end Q10;