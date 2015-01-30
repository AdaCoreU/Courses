pragma Ada_2005;
pragma Style_Checks (Off);

with Interfaces.C; use Interfaces.C;
with Interfaces.C.Strings;
with vadefs_h;
with System;
with umingw_h;
with umingw_off_t_h;

package stdio_h is


   BUFSIZ : constant := 512;  --  c:\adacoreu\mixed_language_programming_in_ada_code\gnatgpl2014\bin\../lib/gcc/i686-pc-mingw32/4.7.4/../../../../i686-pc-mingw32/include/stdio.h:19

   EOF : constant := (-1);  --  c:\adacoreu\mixed_language_programming_in_ada_code\gnatgpl2014\bin\../lib/gcc/i686-pc-mingw32/4.7.4/../../../../i686-pc-mingw32/include/stdio.h:23
   --  unsupported macro: L_tmpnam (sizeof(_P_tmpdir) + 12)

   SEEK_CUR : constant := 1;  --  c:\adacoreu\mixed_language_programming_in_ada_code\gnatgpl2014\bin\../lib/gcc/i686-pc-mingw32/4.7.4/../../../../i686-pc-mingw32/include/stdio.h:55
   SEEK_END : constant := 2;  --  c:\adacoreu\mixed_language_programming_in_ada_code\gnatgpl2014\bin\../lib/gcc/i686-pc-mingw32/4.7.4/../../../../i686-pc-mingw32/include/stdio.h:56
   SEEK_SET : constant := 0;  --  c:\adacoreu\mixed_language_programming_in_ada_code\gnatgpl2014\bin\../lib/gcc/i686-pc-mingw32/4.7.4/../../../../i686-pc-mingw32/include/stdio.h:57

   STDIN_FILENO : constant := 0;  --  c:\adacoreu\mixed_language_programming_in_ada_code\gnatgpl2014\bin\../lib/gcc/i686-pc-mingw32/4.7.4/../../../../i686-pc-mingw32/include/stdio.h:59
   STDOUT_FILENO : constant := 1;  --  c:\adacoreu\mixed_language_programming_in_ada_code\gnatgpl2014\bin\../lib/gcc/i686-pc-mingw32/4.7.4/../../../../i686-pc-mingw32/include/stdio.h:60
   STDERR_FILENO : constant := 2;  --  c:\adacoreu\mixed_language_programming_in_ada_code\gnatgpl2014\bin\../lib/gcc/i686-pc-mingw32/4.7.4/../../../../i686-pc-mingw32/include/stdio.h:61

   FILENAME_MAX : constant := 260;  --  c:\adacoreu\mixed_language_programming_in_ada_code\gnatgpl2014\bin\../lib/gcc/i686-pc-mingw32/4.7.4/../../../../i686-pc-mingw32/include/stdio.h:63
   FOPEN_MAX : constant := 20;  --  c:\adacoreu\mixed_language_programming_in_ada_code\gnatgpl2014\bin\../lib/gcc/i686-pc-mingw32/4.7.4/../../../../i686-pc-mingw32/include/stdio.h:64

   TMP_MAX : constant := 32767;  --  c:\adacoreu\mixed_language_programming_in_ada_code\gnatgpl2014\bin\../lib/gcc/i686-pc-mingw32/4.7.4/../../../../i686-pc-mingw32/include/stdio.h:66
   --  unsupported macro: NULL ((void *)0)
   --  unsupported macro: stdin (&__iob_func()[0])
   --  unsupported macro: stdout (&__iob_func()[1])
   --  unsupported macro: stderr (&__iob_func()[2])
   --  unsupported macro: popen _popen
   --  unsupported macro: pclose _pclose
   --  unsupported macro: WEOF (wint_t)(0xFFFF)
   --  unsupported macro: wpopen _wpopen
   --  arg-macro: procedure getwchar ()
   --    fgetwc(stdin)
   --  arg-macro: procedure putwchar (_c)
   --    fputwc((_c),stdout)
   --  arg-macro: procedure getwc (_stm)
   --    fgetwc(_stm)
   --  arg-macro: procedure putwc (_c, _stm)
   --    fputwc(_c,_stm)
   --  unsupported macro: P_tmpdir _P_tmpdir
   --  unsupported macro: SYS_OPEN _SYS_OPEN

  --*
  -- * This file has no copyright assigned and is placed in the Public Domain.
  -- * This file is part of the w64 mingw-runtime package.
  -- * No warranty is given; refer to the file DISCLAIMER.PD within this package.
  --  

   type u_iobuf is record
      u_ptr : Interfaces.C.Strings.chars_ptr;  -- c:\adacoreu\mixed_language_programming_in_ada_code\gnatgpl2014\bin\../lib/gcc/i686-pc-mingw32/4.7.4/../../../../i686-pc-mingw32/include/stdio.h:27
      u_cnt : aliased int;  -- c:\adacoreu\mixed_language_programming_in_ada_code\gnatgpl2014\bin\../lib/gcc/i686-pc-mingw32/4.7.4/../../../../i686-pc-mingw32/include/stdio.h:28
      u_base : Interfaces.C.Strings.chars_ptr;  -- c:\adacoreu\mixed_language_programming_in_ada_code\gnatgpl2014\bin\../lib/gcc/i686-pc-mingw32/4.7.4/../../../../i686-pc-mingw32/include/stdio.h:29
      u_flag : aliased int;  -- c:\adacoreu\mixed_language_programming_in_ada_code\gnatgpl2014\bin\../lib/gcc/i686-pc-mingw32/4.7.4/../../../../i686-pc-mingw32/include/stdio.h:30
      u_file : aliased int;  -- c:\adacoreu\mixed_language_programming_in_ada_code\gnatgpl2014\bin\../lib/gcc/i686-pc-mingw32/4.7.4/../../../../i686-pc-mingw32/include/stdio.h:31
      u_charbuf : aliased int;  -- c:\adacoreu\mixed_language_programming_in_ada_code\gnatgpl2014\bin\../lib/gcc/i686-pc-mingw32/4.7.4/../../../../i686-pc-mingw32/include/stdio.h:32
      u_bufsiz : aliased int;  -- c:\adacoreu\mixed_language_programming_in_ada_code\gnatgpl2014\bin\../lib/gcc/i686-pc-mingw32/4.7.4/../../../../i686-pc-mingw32/include/stdio.h:33
      u_tmpfname : Interfaces.C.Strings.chars_ptr;  -- c:\adacoreu\mixed_language_programming_in_ada_code\gnatgpl2014\bin\../lib/gcc/i686-pc-mingw32/4.7.4/../../../../i686-pc-mingw32/include/stdio.h:34
   end record;
   pragma Convention (C_Pass_By_Copy, u_iobuf);  -- c:\adacoreu\mixed_language_programming_in_ada_code\gnatgpl2014\bin\../lib/gcc/i686-pc-mingw32/4.7.4/../../../../i686-pc-mingw32/include/stdio.h:26

   subtype FILE is u_iobuf;

  -- A pointer to an array of FILE  
  -- A pointer to an array of FILE  
   subtype fpos_t is Long_Long_Integer;  -- c:\adacoreu\mixed_language_programming_in_ada_code\gnatgpl2014\bin\../lib/gcc/i686-pc-mingw32/4.7.4/../../../../i686-pc-mingw32/include/stdio.h:103

   --  skipped func __mingw_sscanf

   --  skipped func __mingw_vsscanf

   --  skipped func __mingw_scanf

   --  skipped func __mingw_vscanf

   --  skipped func __mingw_fscanf

   --  skipped func __mingw_vfscanf

   --  skipped func __mingw_vsnprintf

   --  skipped func __mingw_snprintf

   --  skipped func __mingw_printf

   --  skipped func __mingw_vprintf

   --  skipped func __mingw_fprintf

   --  skipped func __mingw_vfprintf

   --  skipped func __mingw_sprintf

   --  skipped func __mingw_vsprintf

   --  skipped func __mingw_asprintf

   --  skipped func __mingw_vasprintf

  -- * User has expressed a preference for C99 conformance...
  --  

  -- * Default configuration: simply direct all calls to MSVCRT...
  --  

   function fprintf (arg1 : access FILE; arg2 : Interfaces.C.Strings.chars_ptr  -- , ...
      ) return int;  -- c:\adacoreu\mixed_language_programming_in_ada_code\gnatgpl2014\bin\../lib/gcc/i686-pc-mingw32/4.7.4/../../../../i686-pc-mingw32/include/stdio.h:348
   pragma Import (C, fprintf, "fprintf");

   function printf (arg1 : Interfaces.C.Strings.chars_ptr  -- , ...
      ) return int;  -- c:\adacoreu\mixed_language_programming_in_ada_code\gnatgpl2014\bin\../lib/gcc/i686-pc-mingw32/4.7.4/../../../../i686-pc-mingw32/include/stdio.h:349
   pragma Import (C, printf, "printf");

   function sprintf (arg1 : Interfaces.C.Strings.chars_ptr; arg2 : Interfaces.C.Strings.chars_ptr  -- , ...
      ) return int;  -- c:\adacoreu\mixed_language_programming_in_ada_code\gnatgpl2014\bin\../lib/gcc/i686-pc-mingw32/4.7.4/../../../../i686-pc-mingw32/include/stdio.h:350
   pragma Import (C, sprintf, "sprintf");

   function vfprintf
     (arg1 : access FILE;
      arg2 : Interfaces.C.Strings.chars_ptr;
      arg3 : vadefs_h.va_list) return int;  -- c:\adacoreu\mixed_language_programming_in_ada_code\gnatgpl2014\bin\../lib/gcc/i686-pc-mingw32/4.7.4/../../../../i686-pc-mingw32/include/stdio.h:352
   pragma Import (C, vfprintf, "vfprintf");

   function vprintf (arg1 : Interfaces.C.Strings.chars_ptr; arg2 : Interfaces.C.Strings.chars_ptr) return int;  -- c:\adacoreu\mixed_language_programming_in_ada_code\gnatgpl2014\bin\../lib/gcc/i686-pc-mingw32/4.7.4/../../../../i686-pc-mingw32/include/stdio.h:353
   pragma Import (C, vprintf, "vprintf");

   function vsprintf
     (arg1 : Interfaces.C.Strings.chars_ptr;
      arg2 : Interfaces.C.Strings.chars_ptr;
      arg3 : Interfaces.C.Strings.chars_ptr) return int;  -- c:\adacoreu\mixed_language_programming_in_ada_code\gnatgpl2014\bin\../lib/gcc/i686-pc-mingw32/4.7.4/../../../../i686-pc-mingw32/include/stdio.h:354
   pragma Import (C, vsprintf, "vsprintf");

   function fscanf (arg1 : access FILE; arg2 : Interfaces.C.Strings.chars_ptr  -- , ...
      ) return int;  -- c:\adacoreu\mixed_language_programming_in_ada_code\gnatgpl2014\bin\../lib/gcc/i686-pc-mingw32/4.7.4/../../../../i686-pc-mingw32/include/stdio.h:356
   pragma Import (C, fscanf, "fscanf");

   function scanf (arg1 : Interfaces.C.Strings.chars_ptr  -- , ...
      ) return int;  -- c:\adacoreu\mixed_language_programming_in_ada_code\gnatgpl2014\bin\../lib/gcc/i686-pc-mingw32/4.7.4/../../../../i686-pc-mingw32/include/stdio.h:357
   pragma Import (C, scanf, "scanf");

   function sscanf (arg1 : Interfaces.C.Strings.chars_ptr; arg2 : Interfaces.C.Strings.chars_ptr  -- , ...
      ) return int;  -- c:\adacoreu\mixed_language_programming_in_ada_code\gnatgpl2014\bin\../lib/gcc/i686-pc-mingw32/4.7.4/../../../../i686-pc-mingw32/include/stdio.h:358
   pragma Import (C, sscanf, "sscanf");

   function vscanf (arg1 : Interfaces.C.Strings.chars_ptr; arg2 : Interfaces.C.Strings.chars_ptr) return int;  -- c:\adacoreu\mixed_language_programming_in_ada_code\gnatgpl2014\bin\../lib/gcc/i686-pc-mingw32/4.7.4/../../../../i686-pc-mingw32/include/stdio.h:360
   pragma Import (C, vscanf, "vscanf");

   function vfscanf
     (arg1 : access FILE;
      arg2 : Interfaces.C.Strings.chars_ptr;
      arg3 : vadefs_h.va_list) return int;  -- c:\adacoreu\mixed_language_programming_in_ada_code\gnatgpl2014\bin\../lib/gcc/i686-pc-mingw32/4.7.4/../../../../i686-pc-mingw32/include/stdio.h:361
   pragma Import (C, vfscanf, "vfscanf");

   function vsscanf
     (arg1 : Interfaces.C.Strings.chars_ptr;
      arg2 : Interfaces.C.Strings.chars_ptr;
      arg3 : Interfaces.C.Strings.chars_ptr) return int;  -- c:\adacoreu\mixed_language_programming_in_ada_code\gnatgpl2014\bin\../lib/gcc/i686-pc-mingw32/4.7.4/../../../../i686-pc-mingw32/include/stdio.h:362
   pragma Import (C, vsscanf, "vsscanf");

   --  skipped func _filbuf

   --  skipped func _flsbuf

   --  skipped func _fsopen

   procedure clearerr (arg1 : access FILE);  -- c:\adacoreu\mixed_language_programming_in_ada_code\gnatgpl2014\bin\../lib/gcc/i686-pc-mingw32/4.7.4/../../../../i686-pc-mingw32/include/stdio.h:373
   pragma Import (C, clearerr, "clearerr");

   function fclose (arg1 : access FILE) return int;  -- c:\adacoreu\mixed_language_programming_in_ada_code\gnatgpl2014\bin\../lib/gcc/i686-pc-mingw32/4.7.4/../../../../i686-pc-mingw32/include/stdio.h:374
   pragma Import (C, fclose, "fclose");

   --  skipped func _fcloseall

   --  skipped func _fdopen

   function feof (arg1 : access FILE) return int;  -- c:\adacoreu\mixed_language_programming_in_ada_code\gnatgpl2014\bin\../lib/gcc/i686-pc-mingw32/4.7.4/../../../../i686-pc-mingw32/include/stdio.h:381
   pragma Import (C, feof, "feof");

   function ferror (arg1 : access FILE) return int;  -- c:\adacoreu\mixed_language_programming_in_ada_code\gnatgpl2014\bin\../lib/gcc/i686-pc-mingw32/4.7.4/../../../../i686-pc-mingw32/include/stdio.h:382
   pragma Import (C, ferror, "ferror");

   function fflush (arg1 : access FILE) return int;  -- c:\adacoreu\mixed_language_programming_in_ada_code\gnatgpl2014\bin\../lib/gcc/i686-pc-mingw32/4.7.4/../../../../i686-pc-mingw32/include/stdio.h:383
   pragma Import (C, fflush, "fflush");

   function fgetc (arg1 : access FILE) return int;  -- c:\adacoreu\mixed_language_programming_in_ada_code\gnatgpl2014\bin\../lib/gcc/i686-pc-mingw32/4.7.4/../../../../i686-pc-mingw32/include/stdio.h:384
   pragma Import (C, fgetc, "fgetc");

   --  skipped func _fgetchar

  -- 64bit only, no 32bit version  
   function fgetpos (arg1 : access FILE; arg2 : access fpos_t) return int;  -- c:\adacoreu\mixed_language_programming_in_ada_code\gnatgpl2014\bin\../lib/gcc/i686-pc-mingw32/4.7.4/../../../../i686-pc-mingw32/include/stdio.h:386
   pragma Import (C, fgetpos, "fgetpos");

  -- fgetpos already 64bit  
   function fgetpos64 (arg1 : access FILE; arg2 : access fpos_t) return int;  -- c:\adacoreu\mixed_language_programming_in_ada_code\gnatgpl2014\bin\../lib/gcc/i686-pc-mingw32/4.7.4/../../../../i686-pc-mingw32/include/stdio.h:387
   pragma Import (C, fgetpos64, "fgetpos64");

   function fgets
     (arg1 : Interfaces.C.Strings.chars_ptr;
      arg2 : int;
      arg3 : access FILE) return Interfaces.C.Strings.chars_ptr;  -- c:\adacoreu\mixed_language_programming_in_ada_code\gnatgpl2014\bin\../lib/gcc/i686-pc-mingw32/4.7.4/../../../../i686-pc-mingw32/include/stdio.h:388
   pragma Import (C, fgets, "fgets");

   --  skipped func _fileno

   --  skipped func _tempnam

   --  skipped func _flushall

   function fopen (arg1 : Interfaces.C.Strings.chars_ptr; arg2 : Interfaces.C.Strings.chars_ptr) return access FILE;  -- c:\adacoreu\mixed_language_programming_in_ada_code\gnatgpl2014\bin\../lib/gcc/i686-pc-mingw32/4.7.4/../../../../i686-pc-mingw32/include/stdio.h:395
   pragma Import (C, fopen, "fopen");

   function fopen64 (arg1 : Interfaces.C.Strings.chars_ptr; arg2 : Interfaces.C.Strings.chars_ptr) return access FILE;  -- c:\adacoreu\mixed_language_programming_in_ada_code\gnatgpl2014\bin\../lib/gcc/i686-pc-mingw32/4.7.4/../../../../i686-pc-mingw32/include/stdio.h:396
   pragma Import (C, fopen64, "fopen64");

   function fputc (arg1 : int; arg2 : access FILE) return int;  -- c:\adacoreu\mixed_language_programming_in_ada_code\gnatgpl2014\bin\../lib/gcc/i686-pc-mingw32/4.7.4/../../../../i686-pc-mingw32/include/stdio.h:397
   pragma Import (C, fputc, "fputc");

   --  skipped func _fputchar

   function fputs (arg1 : Interfaces.C.Strings.chars_ptr; arg2 : access FILE) return int;  -- c:\adacoreu\mixed_language_programming_in_ada_code\gnatgpl2014\bin\../lib/gcc/i686-pc-mingw32/4.7.4/../../../../i686-pc-mingw32/include/stdio.h:399
   pragma Import (C, fputs, "fputs");

   function fread
     (arg1 : System.Address;
      arg2 : umingw_h.size_t;
      arg3 : umingw_h.size_t;
      arg4 : access FILE) return umingw_h.size_t;  -- c:\adacoreu\mixed_language_programming_in_ada_code\gnatgpl2014\bin\../lib/gcc/i686-pc-mingw32/4.7.4/../../../../i686-pc-mingw32/include/stdio.h:400
   pragma Import (C, fread, "fread");

   function freopen
     (arg1 : Interfaces.C.Strings.chars_ptr;
      arg2 : Interfaces.C.Strings.chars_ptr;
      arg3 : access FILE) return access FILE;  -- c:\adacoreu\mixed_language_programming_in_ada_code\gnatgpl2014\bin\../lib/gcc/i686-pc-mingw32/4.7.4/../../../../i686-pc-mingw32/include/stdio.h:401
   pragma Import (C, freopen, "freopen");

   --  skipped func _fscanf_l

   function fsetpos (arg1 : access FILE; arg2 : access fpos_t) return int;  -- c:\adacoreu\mixed_language_programming_in_ada_code\gnatgpl2014\bin\../lib/gcc/i686-pc-mingw32/4.7.4/../../../../i686-pc-mingw32/include/stdio.h:403
   pragma Import (C, fsetpos, "fsetpos");

  -- fsetpos already 64bit  
   function fsetpos64 (arg1 : access FILE; arg2 : access fpos_t) return int;  -- c:\adacoreu\mixed_language_programming_in_ada_code\gnatgpl2014\bin\../lib/gcc/i686-pc-mingw32/4.7.4/../../../../i686-pc-mingw32/include/stdio.h:404
   pragma Import (C, fsetpos64, "fsetpos64");

   function fseek
     (arg1 : access FILE;
      arg2 : long;
      arg3 : int) return int;  -- c:\adacoreu\mixed_language_programming_in_ada_code\gnatgpl2014\bin\../lib/gcc/i686-pc-mingw32/4.7.4/../../../../i686-pc-mingw32/include/stdio.h:405
   pragma Import (C, fseek, "fseek");

  -- Shouldn't be any fseeko32 in glibc, 32bit to 64bit casting should be fine  
  -- int fseeko32(FILE* stream, _off_t offset, int whence); 
  -- fseeko32 redirects to fseeko64  
   function fseeko64
     (arg1 : access FILE;
      arg2 : umingw_off_t_h.u_off64_t;
      arg3 : int) return int;  -- c:\adacoreu\mixed_language_programming_in_ada_code\gnatgpl2014\bin\../lib/gcc/i686-pc-mingw32/4.7.4/../../../../i686-pc-mingw32/include/stdio.h:409
   pragma Import (C, fseeko64, "fseeko64");

   function fseeko
     (arg1 : access FILE;
      arg2 : umingw_off_t_h.u_off_t;
      arg3 : int) return int;  -- c:\adacoreu\mixed_language_programming_in_ada_code\gnatgpl2014\bin\../lib/gcc/i686-pc-mingw32/4.7.4/../../../../i686-pc-mingw32/include/stdio.h:410
   pragma Import (C, fseeko, "fseeko");

  --#define fseeko(__stream,__offset,__whence) fseeko64(__stream,__offset,__whence) 
  -- fseeko32 redirects to fseeko64, though fseeko (32bit off_t) symbol is provided  
  -- #define fseeko(__stream,__offset,__whence) fseeko64(__stream,__offset,__whence)  
   function ftell (arg1 : access FILE) return long;  -- c:\adacoreu\mixed_language_programming_in_ada_code\gnatgpl2014\bin\../lib/gcc/i686-pc-mingw32/4.7.4/../../../../i686-pc-mingw32/include/stdio.h:423
   pragma Import (C, ftell, "ftell");

  -- Returns truncated 64bit off_t  
   function ftello (arg1 : access FILE) return umingw_off_t_h.u_off_t;  -- c:\adacoreu\mixed_language_programming_in_ada_code\gnatgpl2014\bin\../lib/gcc/i686-pc-mingw32/4.7.4/../../../../i686-pc-mingw32/include/stdio.h:425
   pragma Import (C, ftello, "ftello");

   function ftello64 (arg1 : access FILE) return umingw_off_t_h.u_off64_t;  -- c:\adacoreu\mixed_language_programming_in_ada_code\gnatgpl2014\bin\../lib/gcc/i686-pc-mingw32/4.7.4/../../../../i686-pc-mingw32/include/stdio.h:426
   pragma Import (C, ftello64, "ftello64");

   --  skipped func _fseeki64

   --  skipped func _ftelli64

   function fwrite
     (arg1 : System.Address;
      arg2 : umingw_h.size_t;
      arg3 : umingw_h.size_t;
      arg4 : access FILE) return umingw_h.size_t;  -- c:\adacoreu\mixed_language_programming_in_ada_code\gnatgpl2014\bin\../lib/gcc/i686-pc-mingw32/4.7.4/../../../../i686-pc-mingw32/include/stdio.h:437
   pragma Import (C, fwrite, "fwrite");

   function getc (arg1 : access FILE) return int;  -- c:\adacoreu\mixed_language_programming_in_ada_code\gnatgpl2014\bin\../lib/gcc/i686-pc-mingw32/4.7.4/../../../../i686-pc-mingw32/include/stdio.h:438
   pragma Import (C, getc, "getc");

   function getchar return int;  -- c:\adacoreu\mixed_language_programming_in_ada_code\gnatgpl2014\bin\../lib/gcc/i686-pc-mingw32/4.7.4/../../../../i686-pc-mingw32/include/stdio.h:439
   pragma Import (C, getchar, "getchar");

   --  skipped func _getmaxstdio

   function gets (arg1 : Interfaces.C.Strings.chars_ptr) return Interfaces.C.Strings.chars_ptr;  -- c:\adacoreu\mixed_language_programming_in_ada_code\gnatgpl2014\bin\../lib/gcc/i686-pc-mingw32/4.7.4/../../../../i686-pc-mingw32/include/stdio.h:441
   pragma Import (C, gets, "gets");

   --  skipped func _getw

   procedure perror (arg1 : Interfaces.C.Strings.chars_ptr);  -- c:\adacoreu\mixed_language_programming_in_ada_code\gnatgpl2014\bin\../lib/gcc/i686-pc-mingw32/4.7.4/../../../../i686-pc-mingw32/include/stdio.h:445
   pragma Import (C, perror, "perror");

   --  skipped func _pclose

   --  skipped func _popen

   function putc (arg1 : int; arg2 : access FILE) return int;  -- c:\adacoreu\mixed_language_programming_in_ada_code\gnatgpl2014\bin\../lib/gcc/i686-pc-mingw32/4.7.4/../../../../i686-pc-mingw32/include/stdio.h:453
   pragma Import (C, putc, "putc");

   function putchar (arg1 : int) return int;  -- c:\adacoreu\mixed_language_programming_in_ada_code\gnatgpl2014\bin\../lib/gcc/i686-pc-mingw32/4.7.4/../../../../i686-pc-mingw32/include/stdio.h:454
   pragma Import (C, putchar, "putchar");

   function puts (arg1 : Interfaces.C.Strings.chars_ptr) return int;  -- c:\adacoreu\mixed_language_programming_in_ada_code\gnatgpl2014\bin\../lib/gcc/i686-pc-mingw32/4.7.4/../../../../i686-pc-mingw32/include/stdio.h:455
   pragma Import (C, puts, "puts");

   --  skipped func _putw

   function remove (arg1 : Interfaces.C.Strings.chars_ptr) return int;  -- c:\adacoreu\mixed_language_programming_in_ada_code\gnatgpl2014\bin\../lib/gcc/i686-pc-mingw32/4.7.4/../../../../i686-pc-mingw32/include/stdio.h:459
   pragma Import (C, remove, "remove");

   function rename (arg1 : Interfaces.C.Strings.chars_ptr; arg2 : Interfaces.C.Strings.chars_ptr) return int;  -- c:\adacoreu\mixed_language_programming_in_ada_code\gnatgpl2014\bin\../lib/gcc/i686-pc-mingw32/4.7.4/../../../../i686-pc-mingw32/include/stdio.h:460
   pragma Import (C, rename, "rename");

   --  skipped func _unlink

   function unlink (arg1 : Interfaces.C.Strings.chars_ptr) return int;  -- c:\adacoreu\mixed_language_programming_in_ada_code\gnatgpl2014\bin\../lib/gcc/i686-pc-mingw32/4.7.4/../../../../i686-pc-mingw32/include/stdio.h:463
   pragma Import (C, unlink, "unlink");

   procedure rewind (arg1 : access FILE);  -- c:\adacoreu\mixed_language_programming_in_ada_code\gnatgpl2014\bin\../lib/gcc/i686-pc-mingw32/4.7.4/../../../../i686-pc-mingw32/include/stdio.h:466
   pragma Import (C, rewind, "rewind");

   --  skipped func _rmtmp

   --  skipped func _scanf_l

   procedure setbuf (arg1 : access FILE; arg2 : Interfaces.C.Strings.chars_ptr);  -- c:\adacoreu\mixed_language_programming_in_ada_code\gnatgpl2014\bin\../lib/gcc/i686-pc-mingw32/4.7.4/../../../../i686-pc-mingw32/include/stdio.h:469
   pragma Import (C, setbuf, "setbuf");

   --  skipped func _setmaxstdio

   --  skipped func _set_output_format

   --  skipped func _get_output_format

   --  skipped func __mingw_set_output_format

   --  skipped func __mingw_get_output_format

   function setvbuf
     (arg1 : access FILE;
      arg2 : Interfaces.C.Strings.chars_ptr;
      arg3 : int;
      arg4 : umingw_h.size_t) return int;  -- c:\adacoreu\mixed_language_programming_in_ada_code\gnatgpl2014\bin\../lib/gcc/i686-pc-mingw32/4.7.4/../../../../i686-pc-mingw32/include/stdio.h:479
   pragma Import (C, setvbuf, "setvbuf");

   --  skipped func _scprintf

   --  skipped func _sscanf_l

   --  skipped func _snscanf

   --  skipped func _snscanf_l

   function tmpfile return access FILE;  -- c:\adacoreu\mixed_language_programming_in_ada_code\gnatgpl2014\bin\../lib/gcc/i686-pc-mingw32/4.7.4/../../../../i686-pc-mingw32/include/stdio.h:484
   pragma Import (C, tmpfile, "tmpfile");

   function tmpnam (arg1 : Interfaces.C.Strings.chars_ptr) return Interfaces.C.Strings.chars_ptr;  -- c:\adacoreu\mixed_language_programming_in_ada_code\gnatgpl2014\bin\../lib/gcc/i686-pc-mingw32/4.7.4/../../../../i686-pc-mingw32/include/stdio.h:485
   pragma Import (C, tmpnam, "tmpnam");

   function ungetc (arg1 : int; arg2 : access FILE) return int;  -- c:\adacoreu\mixed_language_programming_in_ada_code\gnatgpl2014\bin\../lib/gcc/i686-pc-mingw32/4.7.4/../../../../i686-pc-mingw32/include/stdio.h:486
   pragma Import (C, ungetc, "ungetc");

   --  skipped func _snprintf

   --  skipped func _snprintf_l

   --  skipped func _vsnprintf

   --  skipped func _vsnprintf_l

   --  skipped func _sprintf_l

  -- this is here to deal with software defining
  -- * vsnprintf as _vsnprintf, eg. libxml2.   

   function vsnprintf
     (arg1 : Interfaces.C.Strings.chars_ptr;
      arg2 : umingw_h.size_t;
      arg3 : Interfaces.C.Strings.chars_ptr;
      arg4 : Interfaces.C.Strings.chars_ptr) return int;  -- c:\adacoreu\mixed_language_programming_in_ada_code\gnatgpl2014\bin\../lib/gcc/i686-pc-mingw32/4.7.4/../../../../i686-pc-mingw32/include/stdio.h:501
   pragma Import (C, vsnprintf, "vsnprintf");

   function snprintf
     (arg1 : Interfaces.C.Strings.chars_ptr;
      arg2 : umingw_h.size_t;
      arg3 : Interfaces.C.Strings.chars_ptr  -- , ...
      ) return int;  -- c:\adacoreu\mixed_language_programming_in_ada_code\gnatgpl2014\bin\../lib/gcc/i686-pc-mingw32/4.7.4/../../../../i686-pc-mingw32/include/stdio.h:505
   pragma Import (C, snprintf, "snprintf");

   --  skipped func _vscprintf

   --  skipped func _set_printf_count_output

   --  skipped func _get_printf_count_output

  -- __attribute__((__format__ (gnu_wscanf, 2, 3)))  
   --  skipped func __mingw_swscanf

  -- __attribute__((__format__ (gnu_wscanf, 2, 0)))  
   --  skipped func __mingw_vswscanf

  -- __attribute__((__format__ (gnu_wscanf, 1, 2)))  
   --  skipped func __mingw_wscanf

  -- __attribute__((__format__ (gnu_wscanf, 1, 0)))  
   --  skipped func __mingw_vwscanf

  -- __attribute__((__format__ (gnu_wscanf, 2, 3)))  
   --  skipped func __mingw_fwscanf

  -- __attribute__((__format__ (gnu_wscanf, 2, 0)))  
   --  skipped func __mingw_vfwscanf

  -- __attribute__((__format__ (gnu_wprintf, 2, 3)))  
   --  skipped func __mingw_fwprintf

  -- __attribute__((__format__ (gnu_wprintf, 1, 2)))  
   --  skipped func __mingw_wprintf

  -- __attribute__((__format__ (gnu_wprintf, 2, 0)))  
   --  skipped func __mingw_vfwprintf

  --__attribute__((__format__ (gnu_wprintf, 1, 0)))  
   --  skipped func __mingw_vwprintf

  -- __attribute__((__format__ (gnu_wprintf, 2, 3)))  
   --  skipped func __mingw_swprintf

  -- __attribute__((__format__ (gnu_wprintf, 2, 0)))  
   --  skipped func __mingw_vswprintf

  -- __attribute__((__format__ (gnu_wprintf, 3, 4)))  
   --  skipped func __mingw_snwprintf

  -- __attribute__((__format__ (gnu_wprintf, 3, 0)))  
   --  skipped func __mingw_vsnwprintf

  -- * User has expressed a preference for C99 conformance...
  --  

  -- __attribute__((__format__ (gnu_wscanf, 2, 3)))  
  -- __attribute__((__format__ (gnu_wscanf, 1, 2)))  
  -- __attribute__((__format__ (gnu_wscanf, 2, 3)))  
  -- __attribute__((__format__ (gnu_wscanf, 2, 0)))  
  -- __attribute__((__format__ (gnu_wscanf, 1, 0)))  
  -- __attribute__((__format__ (gnu_wscanf, 2, 0)))  
  -- __attribute__((__format__ (gnu_wprintf, 2, 3)))  
  -- __attribute__((__format__ (gnu_wprintf, 1, 2)))  
  -- __attribute__((__format__ (gnu_wprintf, 2, 3)))  
  -- __attribute__((__format__ (gnu_wprintf, 2, 0)))  
  -- __attribute__((__format__ (gnu_wprintf, 1, 0)))  
  -- __attribute__((__format__ (gnu_printf, 2, 0)))  
  -- __attribute__((__format__ (gnu_wprintf, 3, 4)))  
  -- __attribute__((__format__ (gnu_wprintf, 3, 0)))  
   function fwscanf (arg1 : access FILE; arg2 : access umingw_h.wchar_t  -- , ...
      ) return int;  -- c:\adacoreu\mixed_language_programming_in_ada_code\gnatgpl2014\bin\../lib/gcc/i686-pc-mingw32/4.7.4/../../../../i686-pc-mingw32/include/stdio.h:692
   pragma Import (C, fwscanf, "fwscanf");

   function swscanf (arg1 : access umingw_h.wchar_t; arg2 : access umingw_h.wchar_t  -- , ...
      ) return int;  -- c:\adacoreu\mixed_language_programming_in_ada_code\gnatgpl2014\bin\../lib/gcc/i686-pc-mingw32/4.7.4/../../../../i686-pc-mingw32/include/stdio.h:693
   pragma Import (C, swscanf, "swscanf");

   function wscanf (arg1 : access umingw_h.wchar_t  -- , ...
      ) return int;  -- c:\adacoreu\mixed_language_programming_in_ada_code\gnatgpl2014\bin\../lib/gcc/i686-pc-mingw32/4.7.4/../../../../i686-pc-mingw32/include/stdio.h:694
   pragma Import (C, wscanf, "wscanf");

   function vwscanf (arg1 : access umingw_h.wchar_t; arg2 : vadefs_h.va_list) return int;  -- c:\adacoreu\mixed_language_programming_in_ada_code\gnatgpl2014\bin\../lib/gcc/i686-pc-mingw32/4.7.4/../../../../i686-pc-mingw32/include/stdio.h:696
   pragma Import (C, vwscanf, "vwscanf");

   function vfwscanf
     (arg1 : access FILE;
      arg2 : access umingw_h.wchar_t;
      arg3 : vadefs_h.va_list) return int;  -- c:\adacoreu\mixed_language_programming_in_ada_code\gnatgpl2014\bin\../lib/gcc/i686-pc-mingw32/4.7.4/../../../../i686-pc-mingw32/include/stdio.h:697
   pragma Import (C, vfwscanf, "vfwscanf");

   function vswscanf
     (arg1 : access umingw_h.wchar_t;
      arg2 : access umingw_h.wchar_t;
      arg3 : vadefs_h.va_list) return int;  -- c:\adacoreu\mixed_language_programming_in_ada_code\gnatgpl2014\bin\../lib/gcc/i686-pc-mingw32/4.7.4/../../../../i686-pc-mingw32/include/stdio.h:698
   pragma Import (C, vswscanf, "vswscanf");

   function fwprintf (arg1 : access FILE; arg2 : access umingw_h.wchar_t  -- , ...
      ) return int;  -- c:\adacoreu\mixed_language_programming_in_ada_code\gnatgpl2014\bin\../lib/gcc/i686-pc-mingw32/4.7.4/../../../../i686-pc-mingw32/include/stdio.h:701
   pragma Import (C, fwprintf, "fwprintf");

   function wprintf (arg1 : access umingw_h.wchar_t  -- , ...
      ) return int;  -- c:\adacoreu\mixed_language_programming_in_ada_code\gnatgpl2014\bin\../lib/gcc/i686-pc-mingw32/4.7.4/../../../../i686-pc-mingw32/include/stdio.h:702
   pragma Import (C, wprintf, "wprintf");

   function vfwprintf
     (arg1 : access FILE;
      arg2 : access umingw_h.wchar_t;
      arg3 : vadefs_h.va_list) return int;  -- c:\adacoreu\mixed_language_programming_in_ada_code\gnatgpl2014\bin\../lib/gcc/i686-pc-mingw32/4.7.4/../../../../i686-pc-mingw32/include/stdio.h:703
   pragma Import (C, vfwprintf, "vfwprintf");

   function vwprintf (arg1 : access umingw_h.wchar_t; arg2 : vadefs_h.va_list) return int;  -- c:\adacoreu\mixed_language_programming_in_ada_code\gnatgpl2014\bin\../lib/gcc/i686-pc-mingw32/4.7.4/../../../../i686-pc-mingw32/include/stdio.h:704
   pragma Import (C, vwprintf, "vwprintf");

   function swprintf (arg1 : access umingw_h.wchar_t; arg2 : access umingw_h.wchar_t  -- , ...
      ) return int;  -- c:\adacoreu\mixed_language_programming_in_ada_code\gnatgpl2014\bin\../lib/gcc/i686-pc-mingw32/4.7.4/../../../../i686-pc-mingw32/include/stdio.h:705
   pragma Import (C, swprintf, "swprintf");

   function vswprintf
     (arg1 : access umingw_h.wchar_t;
      arg2 : access umingw_h.wchar_t;
      arg3 : vadefs_h.va_list) return int;  -- c:\adacoreu\mixed_language_programming_in_ada_code\gnatgpl2014\bin\../lib/gcc/i686-pc-mingw32/4.7.4/../../../../i686-pc-mingw32/include/stdio.h:706
   pragma Import (C, vswprintf, "vswprintf");

   --  skipped func _wfsopen

   function fgetwc (arg1 : access FILE) return umingw_h.wint_t;  -- c:\adacoreu\mixed_language_programming_in_ada_code\gnatgpl2014\bin\../lib/gcc/i686-pc-mingw32/4.7.4/../../../../i686-pc-mingw32/include/stdio.h:719
   pragma Import (C, fgetwc, "fgetwc");

   --  skipped func _fgetwchar

   function fputwc (arg1 : umingw_h.wchar_t; arg2 : access FILE) return umingw_h.wint_t;  -- c:\adacoreu\mixed_language_programming_in_ada_code\gnatgpl2014\bin\../lib/gcc/i686-pc-mingw32/4.7.4/../../../../i686-pc-mingw32/include/stdio.h:721
   pragma Import (C, fputwc, "fputwc");

   --  skipped func _fputwchar

   function getwc (arg1 : access FILE) return umingw_h.wint_t;  -- c:\adacoreu\mixed_language_programming_in_ada_code\gnatgpl2014\bin\../lib/gcc/i686-pc-mingw32/4.7.4/../../../../i686-pc-mingw32/include/stdio.h:723
   pragma Import (C, getwc, "getwc");

   function getwchar return umingw_h.wint_t;  -- c:\adacoreu\mixed_language_programming_in_ada_code\gnatgpl2014\bin\../lib/gcc/i686-pc-mingw32/4.7.4/../../../../i686-pc-mingw32/include/stdio.h:724
   pragma Import (C, getwchar, "getwchar");

   function putwc (arg1 : umingw_h.wchar_t; arg2 : access FILE) return umingw_h.wint_t;  -- c:\adacoreu\mixed_language_programming_in_ada_code\gnatgpl2014\bin\../lib/gcc/i686-pc-mingw32/4.7.4/../../../../i686-pc-mingw32/include/stdio.h:725
   pragma Import (C, putwc, "putwc");

   function putwchar (arg1 : umingw_h.wchar_t) return umingw_h.wint_t;  -- c:\adacoreu\mixed_language_programming_in_ada_code\gnatgpl2014\bin\../lib/gcc/i686-pc-mingw32/4.7.4/../../../../i686-pc-mingw32/include/stdio.h:726
   pragma Import (C, putwchar, "putwchar");

   function ungetwc (arg1 : umingw_h.wint_t; arg2 : access FILE) return umingw_h.wint_t;  -- c:\adacoreu\mixed_language_programming_in_ada_code\gnatgpl2014\bin\../lib/gcc/i686-pc-mingw32/4.7.4/../../../../i686-pc-mingw32/include/stdio.h:727
   pragma Import (C, ungetwc, "ungetwc");

   function fgetws
     (arg1 : access umingw_h.wchar_t;
      arg2 : int;
      arg3 : access FILE) return access umingw_h.wchar_t;  -- c:\adacoreu\mixed_language_programming_in_ada_code\gnatgpl2014\bin\../lib/gcc/i686-pc-mingw32/4.7.4/../../../../i686-pc-mingw32/include/stdio.h:728
   pragma Import (C, fgetws, "fgetws");

   function fputws (arg1 : access umingw_h.wchar_t; arg2 : access FILE) return int;  -- c:\adacoreu\mixed_language_programming_in_ada_code\gnatgpl2014\bin\../lib/gcc/i686-pc-mingw32/4.7.4/../../../../i686-pc-mingw32/include/stdio.h:729
   pragma Import (C, fputws, "fputws");

   --  skipped func _getws

   --  skipped func _putws

   --  skipped func _scwprintf

   --  skipped func _swprintf_l

   --  skipped func _swprintf_c

   --  skipped func _vswprintf_c

   --  skipped func _snwprintf

   --  skipped func _vsnwprintf

   function snwprintf
     (arg1 : access umingw_h.wchar_t;
      arg2 : umingw_h.size_t;
      arg3 : access umingw_h.wchar_t  -- , ...
      ) return int;  -- c:\adacoreu\mixed_language_programming_in_ada_code\gnatgpl2014\bin\../lib/gcc/i686-pc-mingw32/4.7.4/../../../../i686-pc-mingw32/include/stdio.h:747
   pragma Import (C, snwprintf, "snwprintf");

   function vsnwprintf
     (arg1 : access umingw_h.wchar_t;
      arg2 : umingw_h.size_t;
      arg3 : access umingw_h.wchar_t;
      arg4 : vadefs_h.va_list) return int;  -- c:\adacoreu\mixed_language_programming_in_ada_code\gnatgpl2014\bin\../lib/gcc/i686-pc-mingw32/4.7.4/../../../../i686-pc-mingw32/include/stdio.h:748
   pragma Import (C, vsnwprintf, "vsnwprintf");

   --  skipped func _fwprintf_p

   --  skipped func _wprintf_p

   --  skipped func _vfwprintf_p

   --  skipped func _vwprintf_p

   --  skipped func _swprintf_p

   --  skipped func _vswprintf_p

   --  skipped func _scwprintf_p

   --  skipped func _vscwprintf_p

   --  skipped func _wprintf_l

   --  skipped func _wprintf_p_l

   --  skipped func _vwprintf_l

   --  skipped func _vwprintf_p_l

   --  skipped func _fwprintf_l

   --  skipped func _fwprintf_p_l

   --  skipped func _vfwprintf_l

   --  skipped func _vfwprintf_p_l

   --  skipped func _swprintf_c_l

   --  skipped func _swprintf_p_l

   --  skipped func _vswprintf_c_l

   --  skipped func _vswprintf_p_l

   --  skipped func _scwprintf_l

   --  skipped func _scwprintf_p_l

   --  skipped func _vscwprintf_p_l

   --  skipped func _snwprintf_l

   --  skipped func _vsnwprintf_l

   --  skipped func _swprintf

   --  skipped func _vswprintf

   --  skipped func __swprintf_l

   --  skipped func _vswprintf_l

   --  skipped func __vswprintf_l

   --  skipped func _wtempnam

   --  skipped func _vscwprintf

   --  skipped func _vscwprintf_l

   --  skipped func _fwscanf_l

   --  skipped func _swscanf_l

   --  skipped func _snwscanf

   --  skipped func _snwscanf_l

   --  skipped func _wscanf_l

   --  skipped func _wfdopen

   --  skipped func _wfopen

   --  skipped func _wfreopen

   --  skipped func _wperror

   --  skipped func _wpopen

   --  skipped func _wremove

   --  skipped func _wtmpnam

   --  skipped func _fgetwc_nolock

   --  skipped func _fputwc_nolock

   --  skipped func _ungetwc_nolock

   --  skipped func _lock_file

   --  skipped func _unlock_file

   --  skipped func _fclose_nolock

   --  skipped func _fflush_nolock

   --  skipped func _fread_nolock

   --  skipped func _fseek_nolock

   --  skipped func _ftell_nolock

   --  skipped func _fseeki64_nolock

   --  skipped func _ftelli64_nolock

   --  skipped func _fwrite_nolock

   --  skipped func _ungetc_nolock

   function tempnam (arg1 : Interfaces.C.Strings.chars_ptr; arg2 : Interfaces.C.Strings.chars_ptr) return Interfaces.C.Strings.chars_ptr;  -- c:\adacoreu\mixed_language_programming_in_ada_code\gnatgpl2014\bin\../lib/gcc/i686-pc-mingw32/4.7.4/../../../../i686-pc-mingw32/include/stdio.h:871
   pragma Import (C, tempnam, "tempnam");

   function fcloseall return int;  -- c:\adacoreu\mixed_language_programming_in_ada_code\gnatgpl2014\bin\../lib/gcc/i686-pc-mingw32/4.7.4/../../../../i686-pc-mingw32/include/stdio.h:872
   pragma Import (C, fcloseall, "fcloseall");

   function fdopen (arg1 : int; arg2 : Interfaces.C.Strings.chars_ptr) return access FILE;  -- c:\adacoreu\mixed_language_programming_in_ada_code\gnatgpl2014\bin\../lib/gcc/i686-pc-mingw32/4.7.4/../../../../i686-pc-mingw32/include/stdio.h:873
   pragma Import (C, fdopen, "fdopen");

   function fgetchar return int;  -- c:\adacoreu\mixed_language_programming_in_ada_code\gnatgpl2014\bin\../lib/gcc/i686-pc-mingw32/4.7.4/../../../../i686-pc-mingw32/include/stdio.h:874
   pragma Import (C, fgetchar, "fgetchar");

   function fileno (arg1 : access FILE) return int;  -- c:\adacoreu\mixed_language_programming_in_ada_code\gnatgpl2014\bin\../lib/gcc/i686-pc-mingw32/4.7.4/../../../../i686-pc-mingw32/include/stdio.h:875
   pragma Import (C, fileno, "fileno");

   function flushall return int;  -- c:\adacoreu\mixed_language_programming_in_ada_code\gnatgpl2014\bin\../lib/gcc/i686-pc-mingw32/4.7.4/../../../../i686-pc-mingw32/include/stdio.h:876
   pragma Import (C, flushall, "flushall");

   function fputchar (arg1 : int) return int;  -- c:\adacoreu\mixed_language_programming_in_ada_code\gnatgpl2014\bin\../lib/gcc/i686-pc-mingw32/4.7.4/../../../../i686-pc-mingw32/include/stdio.h:877
   pragma Import (C, fputchar, "fputchar");

   function getw (arg1 : access FILE) return int;  -- c:\adacoreu\mixed_language_programming_in_ada_code\gnatgpl2014\bin\../lib/gcc/i686-pc-mingw32/4.7.4/../../../../i686-pc-mingw32/include/stdio.h:878
   pragma Import (C, getw, "getw");

   function putw (arg1 : int; arg2 : access FILE) return int;  -- c:\adacoreu\mixed_language_programming_in_ada_code\gnatgpl2014\bin\../lib/gcc/i686-pc-mingw32/4.7.4/../../../../i686-pc-mingw32/include/stdio.h:879
   pragma Import (C, putw, "putw");

   function rmtmp return int;  -- c:\adacoreu\mixed_language_programming_in_ada_code\gnatgpl2014\bin\../lib/gcc/i686-pc-mingw32/4.7.4/../../../../i686-pc-mingw32/include/stdio.h:880
   pragma Import (C, rmtmp, "rmtmp");

  --*
  -- * __mingw_str_wide_utf8
  -- * Converts a null terminated UCS-2 string to a multibyte (UTF-8) equivalent.
  -- * Caller is supposed to free allocated buffer with __mingw_str_free().
  -- * @param[in] wptr Pointer to wide string.
  -- * @param[out] mbptr Pointer to multibyte string.
  -- * @param[out] buflen Optional parameter for length of allocated buffer.
  -- * @return Number of characters converted, 0 for failure.
  -- *
  -- * WideCharToMultiByte - http://msdn.microsoft.com/en-us/library/dd374130(VS.85).aspx
  --  

   --  skipped func __mingw_str_wide_utf8

  --*
  -- * __mingw_str_utf8_wide
  -- * Converts a null terminated UTF-8 string to a UCS-2 equivalent.
  -- * Caller is supposed to free allocated buffer with __mingw_str_free().
  -- * @param[out] mbptr Pointer to multibyte string.
  -- * @param[in] wptr Pointer to wide string.
  -- * @param[out] buflen Optional parameter for length of allocated buffer.
  -- * @return Number of characters converted, 0 for failure.
  -- *
  -- * MultiByteToWideChar - http://msdn.microsoft.com/en-us/library/dd319072(VS.85).aspx
  --  

   --  skipped func __mingw_str_utf8_wide

  --*
  -- * __mingw_str_free
  -- * Frees buffer create by __mingw_str_wide_utf8 and __mingw_str_utf8_wide.
  -- * @param[in] ptr memory block to free.
  -- *
  --  

   --  skipped func __mingw_str_free

end stdio_h;
