with Ada.Numerics.Elementary_Functions; use Ada.Numerics.Elementary_Functions;

with Display;       use Display;
with Display.Basic; use Display.Basic;

procedure Main is
   Sun_Shape   : Shape_Id;
   Earth_Shape : Shape_Id;
   Moon_Shape  : Shape_Id;

   Angle_Earth : Float := 0.0;
   Angle_Moon  : Float := 0.0;
begin
   Sun_Shape   := New_Circle (0.0, 0.0, 20.0, Yellow);
   Earth_Shape := New_Circle (0.0, 0.0, 5.0, Blue);
   Moon_Shape  := New_Circle (0.0, 0.0, 2.0, White);

   loop
      Angle_Earth := Angle_Earth + 0.005;
      Angle_Moon  := Angle_Moon - 0.03;

      Set_X (Earth_Shape, Cos (Angle_Earth) * 60.0);
      Set_Y (Earth_Shape, Sin (Angle_Earth) * 60.0);

      Set_X (Moon_Shape, Get_X (Earth_Shape) + Cos (Angle_Moon) * 10.0);
      Set_Y (Moon_Shape, Get_Y (Earth_Shape) + Sin (Angle_Moon) * 10.0);

      delay 0.01;
   end loop;
end Main;
