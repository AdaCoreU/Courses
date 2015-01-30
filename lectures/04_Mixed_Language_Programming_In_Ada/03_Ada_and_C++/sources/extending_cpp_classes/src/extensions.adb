with Ada.Text_IO; use Ada.Text_IO;

package body Extensions is
   
	overriding 
	procedure P1 (This : access Child) is
	begin
		Put_Line ("P1 from Ada");
	end P1;

end Extensions;
