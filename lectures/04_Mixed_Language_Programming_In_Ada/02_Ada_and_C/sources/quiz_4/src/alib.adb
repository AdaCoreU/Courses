with Ada.Text_IO;
package body ALib is

	procedure Output_Object(Obj : ObjPtr) is
	begin
		Ada.Text_IO.Put_Line(Obj.all'Img);
	end Output_Object;

end ALib;
