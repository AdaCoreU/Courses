with aclass_h;
with Ada.Text_IO; use Ada.Text_IO;
with Interfaces.C.Strings; use Interfaces.C.Strings;

procedure Main is
	use aclass_h.Class_AClass;
	X : access AClass := new AClass'(New_AClass(New_String("B")));
begin
	Put_Line(getFirstChar(X)'Img);
end Main;