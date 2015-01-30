pragma Ada_2005;
pragma Style_Checks (Off);

with Interfaces.C; use Interfaces.C;
with System;
with Interfaces.C.Strings;
with umingw_h;

package crtdefs_h is

  --*
  -- * This file has no copyright assigned and is placed in the Public Domain.
  -- * This file is part of the w64 mingw-runtime package.
  -- * No warranty is given; refer to the file DISCLAIMER.PD within this package.
  --  

   subtype errcode is int;  -- c:\adacoreu\mixed_language_programming_in_ada_code\gnatgpl2014\bin\../lib/gcc/i686-pc-mingw32/4.7.4/../../../../i686-pc-mingw32/include/crtdefs.h:14

   --  skipped empty struct threadmbcinfostruct

   type pthreadlocinfo is new System.Address;  -- c:\adacoreu\mixed_language_programming_in_ada_code\gnatgpl2014\bin\../lib/gcc/i686-pc-mingw32/4.7.4/../../../../i686-pc-mingw32/include/crtdefs.h:27

   type pthreadmbcinfo is new System.Address;  -- c:\adacoreu\mixed_language_programming_in_ada_code\gnatgpl2014\bin\../lib/gcc/i686-pc-mingw32/4.7.4/../../../../i686-pc-mingw32/include/crtdefs.h:28

   --  skipped empty struct uu_lc_time_data

   type localeinfo_struct is record
      locinfo : pthreadlocinfo;  -- c:\adacoreu\mixed_language_programming_in_ada_code\gnatgpl2014\bin\../lib/gcc/i686-pc-mingw32/4.7.4/../../../../i686-pc-mingw32/include/crtdefs.h:32
      mbcinfo : pthreadmbcinfo;  -- c:\adacoreu\mixed_language_programming_in_ada_code\gnatgpl2014\bin\../lib/gcc/i686-pc-mingw32/4.7.4/../../../../i686-pc-mingw32/include/crtdefs.h:33
   end record;
   pragma Convention (C_Pass_By_Copy, localeinfo_struct);  -- c:\adacoreu\mixed_language_programming_in_ada_code\gnatgpl2014\bin\../lib/gcc/i686-pc-mingw32/4.7.4/../../../../i686-pc-mingw32/include/crtdefs.h:31

   subtype u_locale_tstruct is localeinfo_struct;

   type u_locale_t is access all localeinfo_struct;  -- c:\adacoreu\mixed_language_programming_in_ada_code\gnatgpl2014\bin\../lib/gcc/i686-pc-mingw32/4.7.4/../../../../i686-pc-mingw32/include/crtdefs.h:34

   type tagLC_ID is record
      wLanguage : aliased unsigned_short;  -- c:\adacoreu\mixed_language_programming_in_ada_code\gnatgpl2014\bin\../lib/gcc/i686-pc-mingw32/4.7.4/../../../../i686-pc-mingw32/include/crtdefs.h:39
      wCountry : aliased unsigned_short;  -- c:\adacoreu\mixed_language_programming_in_ada_code\gnatgpl2014\bin\../lib/gcc/i686-pc-mingw32/4.7.4/../../../../i686-pc-mingw32/include/crtdefs.h:40
      wCodePage : aliased unsigned_short;  -- c:\adacoreu\mixed_language_programming_in_ada_code\gnatgpl2014\bin\../lib/gcc/i686-pc-mingw32/4.7.4/../../../../i686-pc-mingw32/include/crtdefs.h:41
   end record;
   pragma Convention (C_Pass_By_Copy, tagLC_ID);  -- c:\adacoreu\mixed_language_programming_in_ada_code\gnatgpl2014\bin\../lib/gcc/i686-pc-mingw32/4.7.4/../../../../i686-pc-mingw32/include/crtdefs.h:38

   subtype LC_ID is tagLC_ID;

   type LPLC_ID is access all tagLC_ID;  -- c:\adacoreu\mixed_language_programming_in_ada_code\gnatgpl2014\bin\../lib/gcc/i686-pc-mingw32/4.7.4/../../../../i686-pc-mingw32/include/crtdefs.h:42

   type anon_695 is record
      locale : Interfaces.C.Strings.chars_ptr;  -- c:\adacoreu\mixed_language_programming_in_ada_code\gnatgpl2014\bin\../lib/gcc/i686-pc-mingw32/4.7.4/../../../../i686-pc-mingw32/include/crtdefs.h:54
      wlocale : access umingw_h.wchar_t;  -- c:\adacoreu\mixed_language_programming_in_ada_code\gnatgpl2014\bin\../lib/gcc/i686-pc-mingw32/4.7.4/../../../../i686-pc-mingw32/include/crtdefs.h:55
      refcount : access int;  -- c:\adacoreu\mixed_language_programming_in_ada_code\gnatgpl2014\bin\../lib/gcc/i686-pc-mingw32/4.7.4/../../../../i686-pc-mingw32/include/crtdefs.h:56
      wrefcount : access int;  -- c:\adacoreu\mixed_language_programming_in_ada_code\gnatgpl2014\bin\../lib/gcc/i686-pc-mingw32/4.7.4/../../../../i686-pc-mingw32/include/crtdefs.h:57
   end record;
   pragma Convention (C_Pass_By_Copy, anon_695);  -- c:\adacoreu\mixed_language_programming_in_ada_code\gnatgpl2014\bin\../lib/gcc/i686-pc-mingw32/4.7.4/../../../../i686-pc-mingw32/include/crtdefs.h:53

   --  skipped empty struct lconv

   type anon673_anon689_array is array (0 .. 5) of aliased unsigned_long;
   type anon673_anon692_array is array (0 .. 5) of aliased LC_ID;
   type anon673_anon698_array is array (0 .. 5) of aliased anon_695;
   type threadlocaleinfostruct is record
      refcount : aliased int;  -- c:\adacoreu\mixed_language_programming_in_ada_code\gnatgpl2014\bin\../lib/gcc/i686-pc-mingw32/4.7.4/../../../../i686-pc-mingw32/include/crtdefs.h:48
      lc_codepage : aliased unsigned;  -- c:\adacoreu\mixed_language_programming_in_ada_code\gnatgpl2014\bin\../lib/gcc/i686-pc-mingw32/4.7.4/../../../../i686-pc-mingw32/include/crtdefs.h:49
      lc_collate_cp : aliased unsigned;  -- c:\adacoreu\mixed_language_programming_in_ada_code\gnatgpl2014\bin\../lib/gcc/i686-pc-mingw32/4.7.4/../../../../i686-pc-mingw32/include/crtdefs.h:50
      lc_handle : aliased anon673_anon689_array;  -- c:\adacoreu\mixed_language_programming_in_ada_code\gnatgpl2014\bin\../lib/gcc/i686-pc-mingw32/4.7.4/../../../../i686-pc-mingw32/include/crtdefs.h:51
      lc_id : aliased anon673_anon692_array;  -- c:\adacoreu\mixed_language_programming_in_ada_code\gnatgpl2014\bin\../lib/gcc/i686-pc-mingw32/4.7.4/../../../../i686-pc-mingw32/include/crtdefs.h:52
      lc_category : aliased anon673_anon698_array;  -- c:\adacoreu\mixed_language_programming_in_ada_code\gnatgpl2014\bin\../lib/gcc/i686-pc-mingw32/4.7.4/../../../../i686-pc-mingw32/include/crtdefs.h:58
      lc_clike : aliased int;  -- c:\adacoreu\mixed_language_programming_in_ada_code\gnatgpl2014\bin\../lib/gcc/i686-pc-mingw32/4.7.4/../../../../i686-pc-mingw32/include/crtdefs.h:59
      mb_cur_max : aliased int;  -- c:\adacoreu\mixed_language_programming_in_ada_code\gnatgpl2014\bin\../lib/gcc/i686-pc-mingw32/4.7.4/../../../../i686-pc-mingw32/include/crtdefs.h:60
      lconv_intl_refcount : access int;  -- c:\adacoreu\mixed_language_programming_in_ada_code\gnatgpl2014\bin\../lib/gcc/i686-pc-mingw32/4.7.4/../../../../i686-pc-mingw32/include/crtdefs.h:61
      lconv_num_refcount : access int;  -- c:\adacoreu\mixed_language_programming_in_ada_code\gnatgpl2014\bin\../lib/gcc/i686-pc-mingw32/4.7.4/../../../../i686-pc-mingw32/include/crtdefs.h:62
      lconv_mon_refcount : access int;  -- c:\adacoreu\mixed_language_programming_in_ada_code\gnatgpl2014\bin\../lib/gcc/i686-pc-mingw32/4.7.4/../../../../i686-pc-mingw32/include/crtdefs.h:63
      the_lconv : System.Address;  -- c:\adacoreu\mixed_language_programming_in_ada_code\gnatgpl2014\bin\../lib/gcc/i686-pc-mingw32/4.7.4/../../../../i686-pc-mingw32/include/crtdefs.h:64
      ctype1_refcount : access int;  -- c:\adacoreu\mixed_language_programming_in_ada_code\gnatgpl2014\bin\../lib/gcc/i686-pc-mingw32/4.7.4/../../../../i686-pc-mingw32/include/crtdefs.h:65
      ctype1 : access unsigned_short;  -- c:\adacoreu\mixed_language_programming_in_ada_code\gnatgpl2014\bin\../lib/gcc/i686-pc-mingw32/4.7.4/../../../../i686-pc-mingw32/include/crtdefs.h:66
      pctype : access unsigned_short;  -- c:\adacoreu\mixed_language_programming_in_ada_code\gnatgpl2014\bin\../lib/gcc/i686-pc-mingw32/4.7.4/../../../../i686-pc-mingw32/include/crtdefs.h:67
      pclmap : access unsigned_char;  -- c:\adacoreu\mixed_language_programming_in_ada_code\gnatgpl2014\bin\../lib/gcc/i686-pc-mingw32/4.7.4/../../../../i686-pc-mingw32/include/crtdefs.h:68
      pcumap : access unsigned_char;  -- c:\adacoreu\mixed_language_programming_in_ada_code\gnatgpl2014\bin\../lib/gcc/i686-pc-mingw32/4.7.4/../../../../i686-pc-mingw32/include/crtdefs.h:69
      lc_time_curr : System.Address;  -- c:\adacoreu\mixed_language_programming_in_ada_code\gnatgpl2014\bin\../lib/gcc/i686-pc-mingw32/4.7.4/../../../../i686-pc-mingw32/include/crtdefs.h:70
   end record;
   pragma Convention (C_Pass_By_Copy, threadlocaleinfostruct);  -- c:\adacoreu\mixed_language_programming_in_ada_code\gnatgpl2014\bin\../lib/gcc/i686-pc-mingw32/4.7.4/../../../../i686-pc-mingw32/include/crtdefs.h:47

   subtype threadlocinfo is threadlocaleinfostruct;

end crtdefs_h;
