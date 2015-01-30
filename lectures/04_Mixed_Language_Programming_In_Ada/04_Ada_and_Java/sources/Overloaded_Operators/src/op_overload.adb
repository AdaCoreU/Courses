package body Op_Overload is

   function "+"(Left, Right : Example_T) return Example_T is
   begin
      return Example_T(Standard."+"(Left,Right));
   end "+";

   function ">="(Left, Right : Example_T) return Boolean is
   begin
      return Standard.">="(Left,Right);
   end ">=";

end Op_Overload;