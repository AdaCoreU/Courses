with Display;       use Display;
with Display.Basic; use Display.Basic;

procedure Main is
   Sun_Shape   : Shape_Id;
   Earth_Shape : Shape_Id;
begin
   Sun_Shape   := New_Circle (0.0, 0.0, 20.0, Yellow);
   Earth_Shape := New_Circle (0.0, 60.0, 5.0, Blue);
end Main;
