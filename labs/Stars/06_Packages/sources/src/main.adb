with Ada.Numerics.Elementary_Functions; use Ada.Numerics.Elementary_Functions;

with Display;       use Display;
with Display.Basic; use Display.Basic;

procedure Main is

   type Star_Index is range 1 .. Integer'Last;

   type Star is record
      Speed        : Float;
      Distance     : Float;
      Angle        : Float;
      Graphic      : Shape_Id;
      Turns_Around : Star_Index := Star_Index'Last;
   end record;

   type Star_Array is array (Star_Index range <>) of Star;

   procedure Move_Around (The_Star : in out Star; Around : Star) is
   begin
      The_Star.Angle := The_Star.Angle + The_Star.Speed;

      Set_X
        (The_Star.Graphic,
         Get_X (Around.Graphic) + Cos (The_Star.Angle) * The_Star.Distance);
      Set_Y
        (The_Star.Graphic,
         Get_Y (Around.Graphic) + Sin (The_Star.Angle) * The_Star.Distance);
   end Move_Around;

   function Create_Star
     (Size         : Float;
      Color        : Color_Type;
      Speed        : Float;
      Turns_Around : Star_Index;
      Distance     : Float)
      return         Star
   is
      Result : Star;
   begin
      Result.Graphic      := New_Circle (0.0, 0.0, Size, Color);
      Result.Speed        := Speed;
      Result.Angle        := 0.0;
      Result.Turns_Around := Turns_Around;
      Result.Distance     := Distance;

      return Result;
   end Create_Star;

   Stars : Star_Array (1 .. 5);

   Sun       : Star_Index := 1;
   Earth     : Star_Index := 2;
   Moon      : Star_Index := 3;
   Satellite : Star_Index := 4;
   Comet     : Star_Index := 5;

begin
   Stars (Sun)       := Create_Star (20.0, Yellow, 0.0, Sun, 0.0);
   Stars (Earth)     := Create_Star (5.0, Blue, 0.005, Sun, 50.0);
   Stars (Moon)      := Create_Star (2.0, White, -0.03, Earth, 10.0);
   Stars (Satellite) := Create_Star (0.8, Red, 0.007, Earth, 6.0);
   Stars (Comet)     := Create_Star (2.0, Cyan, 0.02, Sun, 75.0);

   loop
      delay 0.01;

      for J in Stars'Range loop
         if Stars (J).Turns_Around in Stars'Range then
            Move_Around (Stars (J), Stars (Stars (J).Turns_Around));
         end if;
      end loop;
   end loop;
end Main;
