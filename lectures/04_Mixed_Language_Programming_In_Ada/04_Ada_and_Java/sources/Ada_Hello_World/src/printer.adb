with Ada.Text_IO;

package body Printer is

   procedure Print(
      Me : in String
   ) is
   begin
      Ada.Text_IO.Put_Line(Me);
   end Print;

end Printer;