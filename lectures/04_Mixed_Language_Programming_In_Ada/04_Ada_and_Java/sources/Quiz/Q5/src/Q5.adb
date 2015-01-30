package body Q5 is

   function "+"(X : Q5_Int; Y : Q5_Int) return Q5_Int is
   begin
      return Q5_Int(Integer(X) + Integer(Y));
   end "+";

   function "="(X : Q5_Int; Y : Q5_Int) return Boolean is
   begin
      return Integer(X) = Integer(Y);
   end "=";

   function "-"(X : Q5_Int; Y : Q5_Int) return Q5_Int is
   begin
      return  Q5_Int(Integer(X) - Integer(Y));
   end "-";

end Q5;