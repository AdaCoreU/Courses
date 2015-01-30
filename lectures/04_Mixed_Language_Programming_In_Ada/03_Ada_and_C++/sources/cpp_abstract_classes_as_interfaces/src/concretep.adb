with Ada.Text_IO;

package body ConcreteP is

	procedure P1 (this : access Concrete) is
	begin
		Ada.Text_IO.Put_Line("P1 from Ada");
	end P1;
	
	function P2 (this : access Concrete) return Interfaces.C.int is
	begin
		Ada.Text_IO.Put_Line("P2 from Ada");
		return 0;
	end P2;
	
	procedure P3 (this : access Concrete) is
	begin
		Ada.Text_IO.Put_Line("P3 from Ada");
	end P3;

end ConcreteP;