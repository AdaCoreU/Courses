with Ada.Text_IO;

procedure Main is

	package Class_I_DDS is
		type I_DDS is limited interface;
		pragma Import (CPP, I_DDS);
		procedure printMe (this : access I_DDS) is abstract;
	end Class_I_DDS;

	package SubClass_I_DDS is
		type Sub_I_DDS is new Class_I_DDS.I_DDS with record
			An_Attribute : Integer := 20;
		end record;

		overriding
		procedure printMe (this : access Sub_I_DDS);
	end SubClass_I_DDS;

	package body SubClass_I_DDS is 
		procedure printMe (this : access Sub_I_DDS) is 
		begin
			Ada.Text_IO.Put_Line(this.An_Attribute'Img);
		end printMe;
	end SubClass_I_DDS;

begin
	SubClass_I_DDS.printMe(new SubClass_I_DDS.Sub_I_DDS);
end Main;
