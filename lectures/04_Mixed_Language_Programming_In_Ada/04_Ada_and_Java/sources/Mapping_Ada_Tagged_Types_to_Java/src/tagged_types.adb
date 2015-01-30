with Ada.Text_IO; use Ada.Text_IO;

package body Tagged_Types is

   procedure Print_Me (V : A_Tagged_Type; Me : String) is
   begin
     Put_Line ("FROM A TAGGED TYPE: " & Me);
   end Print_Me;
   
   procedure Print_Me (V : An_Ada_Child; Me : String) is
   begin
      Put_Line("FROM AN ADA CHILD: " & Me);
   end Print_Me;
   
   procedure Call_Print_Me (Str : String; Val : A_Tagged_Type'Class) is
   begin
      Print_Me (Val, Str);
   end Call_Print_Me;
  
end Tagged_Types;