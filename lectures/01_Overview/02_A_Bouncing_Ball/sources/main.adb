with Display;       use Display;
with Display.Basic; use Display.Basic;

procedure Main is
   Ball : Shape_Id := New_Circle
     (X      => 0.0,
      Y      => 0.0,
      Radius => 10.0,
      Color  => Blue);
   Step : Float := 0.05;
begin
   loop
      if Get_X (Ball) > 100.0 then
         Step := -0.05;
      elsif Get_X (Ball) < -100.0 then
         Step := 0.05;
      end if;

      Set_X (Ball, Get_X (Ball) + Step);

      delay 0.001;
   end loop;
end Main;
