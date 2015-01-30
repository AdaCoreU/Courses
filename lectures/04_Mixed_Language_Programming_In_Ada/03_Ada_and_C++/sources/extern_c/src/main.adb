with Interfaces.C;
with Interfaces.C.Strings;
with Ada.Text_IO;

procedure Main is

	use Interfaces.C.Strings;

	function getRef return Interfaces.C.int;
	pragma Import(CPP, getRef, Link_Name => "__Z6getRefPc");

	function getRefwithString(aString : Interfaces.C.Strings.chars_ptr) return Interfaces.C.int;
	pragma Import(CPP, getRefwithString, External_Name => "getRefWithString");

begin
	Ada.Text_IO.Put_Line(Integer(getRef)'Img);
	Ada.Text_IO.Put_Line(Integer(getRefwithString(New_String("Hello")))'Img);
end Main;
