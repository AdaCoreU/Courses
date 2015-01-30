with Ada.Text_IO;

package body C1P is

	function P2 (this : access Base) return Interfaces.C.int is
	begin
		Ada.Text_IO.Put_Line("P2 from Ada");
		return 0;
	end P2;

end C1P;