pragma Ada_2005;
pragma Style_Checks (Off);

with Interfaces.C; use Interfaces.C;

package umingw_h is


   USE_u_u_UUIDOF : constant := 0;  --  c:\adacoreu\mixed_language_programming_in_ada_code\gnatgpl2014\bin\../lib/gcc/i686-pc-mingw32/4.7.4/../../../../i686-pc-mingw32/include/_mingw.h:83

   WINVER : constant := 16#0502#;  --  c:\adacoreu\mixed_language_programming_in_ada_code\gnatgpl2014\bin\../lib/gcc/i686-pc-mingw32/4.7.4/../../../../i686-pc-mingw32/include/_mingw.h:248

  --*
  -- * This file has no copyright assigned and is placed in the Public Domain.
  -- * This file is part of the w64 mingw-runtime package.
  -- * No warranty is given; refer to the file DISCLAIMER.PD within this package.
  --  

  -- C/C++ specific language defines.   
  -- Note the extern. This is needed to work around GCC's
  --limitations in handling dllimport attribute.   

  -- Attribute `nonnull' was valid as of gcc 3.3.  We don't use GCC's
  --   variadiac macro facility, because variadic macros cause syntax
  --   errors with  --traditional-cpp.   

  --  High byte is the major version, low byte is the minor.  
  -- other headers depend on this include  
  -- We have to define _DLL for gcc based mingw version. This define is set
  --   by VC, when DLL-based runtime is used. So, gcc based runtime just have
  --   DLL-base runtime, therefore this define has to be set.
  --   As our headers are possibly used by windows compiler having a static
  --   C-runtime, we make this definition gnu compiler specific here.   

   subtype size_t is unsigned;  -- c:\adacoreu\mixed_language_programming_in_ada_code\gnatgpl2014\bin\../lib/gcc/i686-pc-mingw32/4.7.4/../../../../i686-pc-mingw32/include/_mingw.h:398

   subtype ssize_t is int;  -- c:\adacoreu\mixed_language_programming_in_ada_code\gnatgpl2014\bin\../lib/gcc/i686-pc-mingw32/4.7.4/../../../../i686-pc-mingw32/include/_mingw.h:408

   subtype intptr_t is int;  -- c:\adacoreu\mixed_language_programming_in_ada_code\gnatgpl2014\bin\../lib/gcc/i686-pc-mingw32/4.7.4/../../../../i686-pc-mingw32/include/_mingw.h:420

   subtype uintptr_t is unsigned;  -- c:\adacoreu\mixed_language_programming_in_ada_code\gnatgpl2014\bin\../lib/gcc/i686-pc-mingw32/4.7.4/../../../../i686-pc-mingw32/include/_mingw.h:433

   subtype ptrdiff_t is int;  -- c:\adacoreu\mixed_language_programming_in_ada_code\gnatgpl2014\bin\../lib/gcc/i686-pc-mingw32/4.7.4/../../../../i686-pc-mingw32/include/_mingw.h:446

   subtype wchar_t is unsigned_short;  -- c:\adacoreu\mixed_language_programming_in_ada_code\gnatgpl2014\bin\../lib/gcc/i686-pc-mingw32/4.7.4/../../../../i686-pc-mingw32/include/_mingw.h:454

   subtype wint_t is unsigned_short;  -- c:\adacoreu\mixed_language_programming_in_ada_code\gnatgpl2014\bin\../lib/gcc/i686-pc-mingw32/4.7.4/../../../../i686-pc-mingw32/include/_mingw.h:462

   subtype wctype_t is unsigned_short;  -- c:\adacoreu\mixed_language_programming_in_ada_code\gnatgpl2014\bin\../lib/gcc/i686-pc-mingw32/4.7.4/../../../../i686-pc-mingw32/include/_mingw.h:463

   subtype errno_t is int;  -- c:\adacoreu\mixed_language_programming_in_ada_code\gnatgpl2014\bin\../lib/gcc/i686-pc-mingw32/4.7.4/../../../../i686-pc-mingw32/include/_mingw.h:482

   subtype uu_time32_t is long;  -- c:\adacoreu\mixed_language_programming_in_ada_code\gnatgpl2014\bin\../lib/gcc/i686-pc-mingw32/4.7.4/../../../../i686-pc-mingw32/include/_mingw.h:487

   subtype uu_time64_t is Long_Long_Integer;  -- c:\adacoreu\mixed_language_programming_in_ada_code\gnatgpl2014\bin\../lib/gcc/i686-pc-mingw32/4.7.4/../../../../i686-pc-mingw32/include/_mingw.h:492

   subtype time_t is uu_time32_t;  -- c:\adacoreu\mixed_language_programming_in_ada_code\gnatgpl2014\bin\../lib/gcc/i686-pc-mingw32/4.7.4/../../../../i686-pc-mingw32/include/_mingw.h:498

  -- Enable __USE_MINGW_ANSI_STDIO if _POSIX defined
  -- * and If user did _not_ specify it explicitly...  

  -- _dowildcard is an int that controls the globbing of the command line.
  -- * The MinGW32 (mingw.org) runtime calls it _CRT_glob, so we are adding
  -- * a compatibility definition here:  you can use either of _CRT_glob or
  -- * _dowildcard .
  -- * If _dowildcard is non-zero, the command line will be globbed:  *.*
  -- * will be expanded to be all files in the startup directory.
  -- * In the mingw-w64 library a _dowildcard variable is defined as being
  -- * 0, therefore command line globbing is DISABLED by default. To turn it
  -- * on and to leave wildcard command line processing MS's globbing code,
  -- * include a line in one of your source modules defining _dowildcard and
  -- * setting it to -1, like so:
  -- * int _dowildcard = -1;
  --  

  -- Macros for __uuidof template-based emulation  
   --  skipped func __debugbreak

  -- mingw-w64 specific functions:  
   --  skipped func __mingw_get_crt_info

end umingw_h;
