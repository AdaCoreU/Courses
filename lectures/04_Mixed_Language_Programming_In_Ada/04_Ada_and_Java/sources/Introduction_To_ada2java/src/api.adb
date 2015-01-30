with Ada.Text_IO;

package body API is
   procedure Print(Str : String; V : R) is
   begin
      Ada.Text_IO.Put_Line(Str & " :" & V.F1'Img & " :" & V.F2'Img);
   end Print;
end API;