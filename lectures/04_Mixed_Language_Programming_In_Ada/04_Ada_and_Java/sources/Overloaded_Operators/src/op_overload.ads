package Op_Overload is

   subtype Example_T is Integer range 1..100;

   function "+"(Left, Right : Example_T) return Example_T;

   function ">="(Left, Right : Example_T) return Boolean;

end Op_Overload;