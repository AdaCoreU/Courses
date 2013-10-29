with Display;                           use Display;
with Display.Basic;                     use Display.Basic;
with Ada.Numerics.Elementary_Functions; use Ada.Numerics.Elementary_Functions;

procedure Main is
   type Ball_Type is record
      Shape       : Shape_Id;
      Angle_Speed : Float;
      Angle       : Float;
      Distance    : Float;
   end record;
   
   procedure Iterate (V : in out Ball_Type) is
   begin
      V.Angle := V.Angle + V.Angle_Speed;
      Set_X (V.Shape, Cos (V.Angle) * V.Distance);
      Set_Y (V.Shape, Sin (V.Angle) * V.Distance);
   end Iterate;
   
   B1 : Ball_Type := 
     (Shape       => New_Circle (0.0, 0.0, 10.0, Blue),
      Angle_Speed => 0.001,
      Angle       => 0.0,
      Distance    => 70.0);
   
   B2 : Ball_Type := 
     (Shape       => New_Circle (0.0, 0.0, 10.0, Green),
      Angle_Speed => -0.002,
      Angle       => 0.0,
      Distance    => 40.0);
begin
   loop
      Iterate (B1);
      Iterate (B2);     
      
      delay 0.001;
   end loop;   
end Main;
