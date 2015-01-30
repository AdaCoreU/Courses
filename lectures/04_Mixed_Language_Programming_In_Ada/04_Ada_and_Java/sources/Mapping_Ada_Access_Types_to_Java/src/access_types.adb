with Ada.Text_IO; use Ada.Text_IO;

package body Access_Types is

   procedure Use_Access_Type(Obj : in Access_Length) is
   begin
      Put_Line(Obj.Value'Img);
   end Use_Access_Type;

end Access_Types;