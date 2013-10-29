with Ada.Numerics.Elementary_Functions; use Ada.Numerics.Elementary_Functions;

with Display;       use Display;
with Display.Basic; use Display.Basic;

procedure Main is

   type Star_Name is (Sun, Earth, Moon, Satellite);

   type Star is record
      Speed        : Float;
      Distance     : Float;
      Angle        : Float;
      Graphic      : Shape_Id;
      Turns_Around : Star_Name;
   end record;

   type Star_Array is array (Star_Name) of Star;

   Stars : Star_Array;

begin
   Stars (Sun).Graphic      := New_Circle (0.0, 0.0, 20.0, Yellow);
   Stars (Sun).Speed        := 0.0;
   Stars (Sun).Distance     := 0.0;
   Stars (Sun).Angle        := 0.0;
   Stars (Sun).Turns_Around := Sun;

   Stars (Earth).Graphic      := New_Circle (0.0, 0.0, 5.0, Blue);
   Stars (Earth).Speed        := 0.005;
   Stars (Earth).Distance     := 60.0;
   Stars (Earth).Angle        := 0.0;
   Stars (Earth).Turns_Around := Sun;

   Stars (Moon).Graphic      := New_Circle (0.0, 0.0, 2.0, White);
   Stars (Moon).Speed        := -0.03;
   Stars (Moon).Distance     := 10.0;
   Stars (Moon).Angle        := 0.0;
   Stars (Moon).Turns_Around := Earth;

   Stars (Satellite).Graphic      := New_Circle (0.0, 0.0, 0.8, Red);
   Stars (Satellite).Speed        := 0.007;
   Stars (Satellite).Distance     := 6.0;
   Stars (Satellite).Angle        := 0.0;
   Stars (Satellite).Turns_Around := Earth;

   loop
      delay 0.01;

      for J in Stars'Range loop
         Set_X
           (Stars (J).Graphic,
            Get_X (Stars (Stars (J).Turns_Around).Graphic) +
            Cos (Stars (J).Angle) * Stars (J).Distance);
         Set_Y
           (Stars (J).Graphic,
            Get_Y (Stars (Stars (J).Turns_Around).Graphic) +
            Sin (Stars (J).Angle) * Stars (J).Distance);
      end loop;

      for J in Stars'Range loop
         Stars (J).Angle := Stars (J).Angle + Stars (J).Speed;
      end loop;
   end loop;
end Main;
