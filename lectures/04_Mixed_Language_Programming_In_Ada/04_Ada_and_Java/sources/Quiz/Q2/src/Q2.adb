with Ada.Text_IO;

package body Q2 is

   procedure Calc_Sum(X : Natural; Y : Natural) is
   begin
      raise Constraint_Error;
   exception
      when Constraint_Error =>
         Ada.Text_IO.Put_Line("Exception in Ada");
         raise;
   end Calc_Sum;

end Q2;