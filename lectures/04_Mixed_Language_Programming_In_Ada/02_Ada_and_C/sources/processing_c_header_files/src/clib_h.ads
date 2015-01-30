pragma Ada_2005;
pragma Style_Checks (Off);

with Interfaces.C; use Interfaces.C;
with System;
with Interfaces.C.Strings;

package clib_h is

   procedure function1 (arg1 : System.Address);  -- clib.h:3
   pragma Import (C, function1, "function1");

   function function2 return System.Address;  -- clib.h:5
   pragma Import (C, function2, "function2");

   function function3 (arg1 : System.Address) return Interfaces.C.Strings.chars_ptr;  -- clib.h:7
   pragma Import (C, function3, "function3");

end clib_h;
