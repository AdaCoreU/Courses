with aclass_h;
with Interfaces.C.Strings;
with Ada.Text_IO;

procedure Main is

	use aclass_h.Class_AClass;
	use Interfaces.C.Strings;
	
	A : aliased AClass := New_AClass(New_String("Hello World"));

begin

	Delete_AClass(A'Access);

end Main;