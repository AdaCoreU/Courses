package Q5 is

   type Q5_Int is new Integer range 0..200;

   function "+"(X : Q5_Int; Y : Q5_Int) return Q5_Int;

   function "="(X : Q5_Int; Y : Q5_Int) return Boolean;

   function "-"(X : Q5_Int; Y : Q5_Int) return Q5_Int;

end Q5;