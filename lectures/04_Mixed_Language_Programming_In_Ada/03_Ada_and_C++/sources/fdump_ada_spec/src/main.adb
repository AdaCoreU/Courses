with Interfaces.C;
with Interfaces.C.Strings;
with Ada.Text_IO;
with cpplib_cpp;

procedure Main is
	use Interfaces.C.Strings;
begin

	Ada.Text_IO.Put_Line(Integer(cpplib_cpp.getRef)'Img);
	Ada.Text_IO.Put_Line(Integer(cpplib_cpp.getRefwithString(New_String("Hello")))'Img);

end Main;