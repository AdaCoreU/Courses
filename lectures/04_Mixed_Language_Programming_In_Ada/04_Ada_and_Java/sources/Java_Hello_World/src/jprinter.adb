with Ada.Text_IO; use Ada.Text_IO;

package body JPrinter is

   procedure Call_Back(Meth : Print_CB; Str : String) is
   begin
      Meth(Str);
   end Call_Back;

end JPrinter;