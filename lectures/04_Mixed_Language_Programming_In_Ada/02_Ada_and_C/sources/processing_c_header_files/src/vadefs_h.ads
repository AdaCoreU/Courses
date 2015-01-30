pragma Ada_2005;
pragma Style_Checks (Off);

with Interfaces.C; use Interfaces.C;
with System;

package vadefs_h is

  --*
  -- * This file has no copyright assigned and is placed in the Public Domain.
  -- * This file is part of the w64 mingw-runtime package.
  -- * No warranty is given; refer to the file DISCLAIMER.PD within this package.
  --  

   subtype uu_gnuc_va_list is System.Address;  -- c:\adacoreu\mixed_language_programming_in_ada_code\gnatgpl2014\bin\../lib/gcc/i686-pc-mingw32/4.7.4/../../../../i686-pc-mingw32/include/vadefs.h:24

   subtype va_list is uu_gnuc_va_list;  -- c:\adacoreu\mixed_language_programming_in_ada_code\gnatgpl2014\bin\../lib/gcc/i686-pc-mingw32/4.7.4/../../../../i686-pc-mingw32/include/vadefs.h:31

  -- Use GCC builtins  
  -- MSVC specific  
end vadefs_h;
