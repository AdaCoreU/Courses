with Ada.Text_IO;

procedure Main is

	cpp_exception : Exception;

	procedure RaiseException;
	pragma Import(CPP, RaiseException, "_Z14raiseExceptionv");

begin
	RaiseException;
exception
	when cpp_exception =>
		Ada.Text_IO.Put_Line("C++ Exception");
end Main;
