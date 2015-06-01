-------------------------------------------------------------------------------
-- This file has been automatically generated by                             --
--    ADA2JAVA (built with ASIS 2.0.R for GNAT GPL 2014 (20140331))          --
-- Original Ada unit: JPrinter                                               --
-- Generation timestamp: 201501031502                                        --
-------------------------------------------------------------------------------

pragma Warnings (Off);
pragma Style_Checks ("NM32766");

with Ada.Unchecked_Deallocation;
with System.Address_To_Access_Conversions;
with Ada.Unchecked_Conversion;
with Ada.Tags;
with Ada.Exceptions;
with Interfaces.C;
with Interfaces.C.Strings;
with JNI_Binding.Standard_JNI;

package body JNI_Binding.JPrinter_JNI.Print_CB_JNI is 

   procedure JNI_For_Body_Elaboration is begin null; end;

   procedure Initialize_Unit_JNI (Id_JNI_1 : Interfaces.Java.JNI.JNI_Env_Access) is
   begin

      null;
      AJIS.Internal.Java.Initialize (Id_JNI_42_Constructor, Id_JNI_1);
      AJIS.Internal.Java.Initialize (Print_CB_Body_Id_JNI_57_Callback_Method_Access, Id_JNI_1);
   end Initialize_Unit_JNI;

   procedure Print_CB (Str : Standard.String) is
      Id_JNI_58 : JNI_Binding.Standard_JNI.Id_JNI_47.Object_Pointer := JNI_Binding.Standard_JNI.Id_JNI_47.Create_General_Encapsulation (Str'Unrestricted_Access);
   begin
      Print_CB_Body_Id_JNI_57_Callback (Id_JNI_1, Id_JNI_2, JNI_Binding.Standard_JNI.Id_JNI_47.To_J_Int_J_Array (Id_JNI_1, Id_JNI_58));
   end Print_CB;

   procedure Print_CB_Body_Id_JNI_57_Callback (Id_JNI_1 : Interfaces.Java.JNI.JNI_Env_Access; Id_JNI_2 : Interfaces.Java.JNI.J_Object; Str : Interfaces.Java.JNI.J_Int_J_Array) is
      Id_JNI_62 : Interfaces.Java.JNI.J_Value_Array (1 .. 1) := 
         (1 => AJIS.Internal.Java.To_J_Value (Str));
   begin
      Interfaces.Java.JNI.Call_Void_Method_A (Id_JNI_1, Id_JNI_2, AJIS.Internal.Java.Get_Id (Print_CB_Body_Id_JNI_57_Callback_Method_Access), Id_JNI_62);
      AJIS.Internal.Java.Handle_Java_Exception (Id_JNI_1);
   end Print_CB_Body_Id_JNI_57_Callback;

begin
   null;
end JNI_Binding.JPrinter_JNI.Print_CB_JNI;