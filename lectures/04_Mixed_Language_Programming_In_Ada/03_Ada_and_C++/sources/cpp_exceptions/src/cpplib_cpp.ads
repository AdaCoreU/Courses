pragma Ada_2005;
pragma Style_Checks (Off);

with Interfaces.C; use Interfaces.C;
with Interfaces.C.Extensions;

package cpplib_cpp is

	function isOK return Extensions.bool;  -- cpplib.cpp:1
	pragma Import (CPP, isOK, "_Z4isOKv");

   --  skipped func __cxa_allocate_exception

   --  skipped func __cxa_throw

   --  skipped func __cxa_free_exception

end cpplib_cpp;
