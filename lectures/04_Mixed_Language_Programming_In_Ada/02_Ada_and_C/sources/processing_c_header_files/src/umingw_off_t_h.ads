pragma Ada_2005;
pragma Style_Checks (Off);

with Interfaces.C; use Interfaces.C;

package umingw_off_t_h is

   subtype u_off_t is long;  -- c:\adacoreu\mixed_language_programming_in_ada_code\gnatgpl2014\bin\../lib/gcc/i686-pc-mingw32/4.7.4/../../../../i686-pc-mingw32/include/_mingw_off_t.h:5

   subtype off32_t is long;  -- c:\adacoreu\mixed_language_programming_in_ada_code\gnatgpl2014\bin\../lib/gcc/i686-pc-mingw32/4.7.4/../../../../i686-pc-mingw32/include/_mingw_off_t.h:7

   subtype u_off64_t is Long_Long_Integer;  -- c:\adacoreu\mixed_language_programming_in_ada_code\gnatgpl2014\bin\../lib/gcc/i686-pc-mingw32/4.7.4/../../../../i686-pc-mingw32/include/_mingw_off_t.h:13

   subtype off64_t is Long_Long_Integer;  -- c:\adacoreu\mixed_language_programming_in_ada_code\gnatgpl2014\bin\../lib/gcc/i686-pc-mingw32/4.7.4/../../../../i686-pc-mingw32/include/_mingw_off_t.h:15

   subtype off_t is off32_t;  -- c:\adacoreu\mixed_language_programming_in_ada_code\gnatgpl2014\bin\../lib/gcc/i686-pc-mingw32/4.7.4/../../../../i686-pc-mingw32/include/_mingw_off_t.h:26

end umingw_off_t_h;
