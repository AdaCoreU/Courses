with aclass_cpp; 
with Ada.Text_IO; use Ada.Text_IO;

procedure Main is
	use aclass_cpp.Class_AClass;
	X : aliased AClass;
begin
	Put_Line(getCharacter(X'Access)'Img);
end Main;