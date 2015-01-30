with Ada.Text_IO;

package body Q4 is

   procedure Print_Target(Obj : Access_Target) is
   begin
      Ada.Text_IO.Put_Line(Obj.Value'Img);
   end Print_Target;

end Q4;