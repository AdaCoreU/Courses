pragma Ada_95;
pragma Source_File_Name (quizmain, Spec_File_Name => "b__quiz.ads");
pragma Source_File_Name (quizmain, Body_File_Name => "b__quiz.adb");

with System.Restrictions;
with Ada.Exceptions;

package body quizmain is
   pragma Warnings (Off);

   E114 : Short_Integer; pragma Import (Ada, E114, "system__os_lib_E");
   E040 : Short_Integer; pragma Import (Ada, E040, "system__soft_links_E");
   E050 : Short_Integer; pragma Import (Ada, E050, "system__exception_table_E");
   E143 : Short_Integer; pragma Import (Ada, E143, "ada__containers_E");
   E095 : Short_Integer; pragma Import (Ada, E095, "ada__io_exceptions_E");
   E072 : Short_Integer; pragma Import (Ada, E072, "ada__tags_E");
   E094 : Short_Integer; pragma Import (Ada, E094, "ada__streams_E");
   E085 : Short_Integer; pragma Import (Ada, E085, "interfaces__c_E");
   E087 : Short_Integer; pragma Import (Ada, E087, "interfaces__c__strings_E");
   E052 : Short_Integer; pragma Import (Ada, E052, "system__exceptions_E");
   E097 : Short_Integer; pragma Import (Ada, E097, "system__finalization_root_E");
   E092 : Short_Integer; pragma Import (Ada, E092, "ada__finalization_E");
   E127 : Short_Integer; pragma Import (Ada, E127, "system__storage_pools_E");
   E119 : Short_Integer; pragma Import (Ada, E119, "system__finalization_masters_E");
   E133 : Short_Integer; pragma Import (Ada, E133, "system__storage_pools__subpools_E");
   E175 : Short_Integer; pragma Import (Ada, E175, "system__task_info_E");
   E129 : Short_Integer; pragma Import (Ada, E129, "system__pool_global_E");
   E117 : Short_Integer; pragma Import (Ada, E117, "system__file_control_block_E");
   E226 : Short_Integer; pragma Import (Ada, E226, "ada__streams__stream_io_E");
   E110 : Short_Integer; pragma Import (Ada, E110, "system__file_io_E");
   E044 : Short_Integer; pragma Import (Ada, E044, "system__secondary_stack_E");
   E224 : Short_Integer; pragma Import (Ada, E224, "system__strings__stream_ops_E");
   E195 : Short_Integer; pragma Import (Ada, E195, "system__tasking__initialization_E");
   E153 : Short_Integer; pragma Import (Ada, E153, "ada__real_time_E");
   E106 : Short_Integer; pragma Import (Ada, E106, "ada__text_io_E");
   E203 : Short_Integer; pragma Import (Ada, E203, "system__tasking__protected_objects_E");
   E207 : Short_Integer; pragma Import (Ada, E207, "system__tasking__protected_objects__entries_E");
   E201 : Short_Integer; pragma Import (Ada, E201, "system__tasking__queuing_E");
   E219 : Short_Integer; pragma Import (Ada, E219, "system__tasking__stages_E");
   E151 : Short_Integer; pragma Import (Ada, E151, "system__interrupts_E");
   E147 : Short_Integer; pragma Import (Ada, E147, "interfaces__java__jni_E");
   E099 : Short_Integer; pragma Import (Ada, E099, "ajis__internal_E");
   E136 : Short_Integer; pragma Import (Ada, E136, "ajis__java_E");
   E030 : Short_Integer; pragma Import (Ada, E030, "q4_E");
   E101 : Short_Integer; pragma Import (Ada, E101, "ajis__internal__java_E");
   E002 : Short_Integer; pragma Import (Ada, E002, "jni_binding_E");
   E026 : Short_Integer; pragma Import (Ada, E026, "jni_binding__ada2java_jni_E");
   E028 : Short_Integer; pragma Import (Ada, E028, "jni_binding__ada2java_jni__library_jni_E");
   E020 : Short_Integer; pragma Import (Ada, E020, "jni_binding__ada_jni_E");
   E022 : Short_Integer; pragma Import (Ada, E022, "jni_binding__ada_jni__exceptions_jni_E");
   E024 : Short_Integer; pragma Import (Ada, E024, "jni_binding__ada_jni__exceptions_jni__exception_occurrence_jni_E");
   E004 : Short_Integer; pragma Import (Ada, E004, "jni_binding__standard_jni_E");
   E014 : Short_Integer; pragma Import (Ada, E014, "jni_binding__q4_jni_E");
   E018 : Short_Integer; pragma Import (Ada, E018, "jni_binding__q4_jni__q4_package_jni_E");
   E016 : Short_Integer; pragma Import (Ada, E016, "jni_binding__q4_jni__target_jni_E");
   E012 : Short_Integer; pragma Import (Ada, E012, "jni_binding__standard_jni__adastring_jni_E");
   E010 : Short_Integer; pragma Import (Ada, E010, "jni_binding__standard_jni__constraint_error_jni_E");
   E008 : Short_Integer; pragma Import (Ada, E008, "jni_binding__standard_jni__program_error_jni_E");
   E006 : Short_Integer; pragma Import (Ada, E006, "jni_binding__standard_jni__storage_error_jni_E");

   Local_Priority_Specific_Dispatching : constant String := "";
   Local_Interrupt_States : constant String := "nnnnsnnnsnnsnnnnnnnnnns";

   Is_Elaborated : Boolean := False;

   procedure finalize_library is
   begin
      E101 := E101 - 1;
      declare
         procedure F1;
         pragma Import (Ada, F1, "ajis__internal__java__finalize_spec");
      begin
         if E101 = 0 then
            F1;
         end if;
      end;
      E151 := E151 - 1;
      declare
         procedure F2;
         pragma Import (Ada, F2, "system__interrupts__finalize_spec");
      begin
         if E151 = 0 then
            F2;
         end if;
      end;
      E207 := E207 - 1;
      declare
         procedure F3;
         pragma Import (Ada, F3, "system__tasking__protected_objects__entries__finalize_spec");
      begin
         if E207 = 0 then
            F3;
         end if;
      end;
      E106 := E106 - 1;
      declare
         procedure F4;
         pragma Import (Ada, F4, "ada__text_io__finalize_spec");
      begin
         if E106 = 0 then
            F4;
         end if;
      end;
      E119 := E119 - 1;
      E133 := E133 - 1;
      declare
         procedure F5;
         pragma Import (Ada, F5, "system__file_io__finalize_body");
      begin
         E110 := E110 - 1;
         if E110 = 0 then
            F5;
         end if;
      end;
      E226 := E226 - 1;
      declare
         procedure F6;
         pragma Import (Ada, F6, "ada__streams__stream_io__finalize_spec");
      begin
         if E226 = 0 then
            F6;
         end if;
      end;
      declare
         procedure F7;
         pragma Import (Ada, F7, "system__file_control_block__finalize_spec");
      begin
         E117 := E117 - 1;
         if E117 = 0 then
            F7;
         end if;
      end;
      E129 := E129 - 1;
      declare
         procedure F8;
         pragma Import (Ada, F8, "system__pool_global__finalize_spec");
      begin
         if E129 = 0 then
            F8;
         end if;
      end;
      declare
         procedure F9;
         pragma Import (Ada, F9, "system__storage_pools__subpools__finalize_spec");
      begin
         if E133 = 0 then
            F9;
         end if;
      end;
      declare
         procedure F10;
         pragma Import (Ada, F10, "system__finalization_masters__finalize_spec");
      begin
         if E119 = 0 then
            F10;
         end if;
      end;
      declare
         procedure Reraise_Library_Exception_If_Any;
            pragma Import (Ada, Reraise_Library_Exception_If_Any, "__gnat_reraise_library_exception_if_any");
      begin
         Reraise_Library_Exception_If_Any;
      end;
   end finalize_library;

   procedure quizfinal is
   begin
      if not Is_Elaborated then
         return;
      end if;
      Is_Elaborated := False;
      finalize_library;
   end quizfinal;

   type No_Param_Proc is access procedure;

   procedure quizinit is
      Main_Priority : Integer;
      pragma Import (C, Main_Priority, "__gl_main_priority");
      Time_Slice_Value : Integer;
      pragma Import (C, Time_Slice_Value, "__gl_time_slice_val");
      WC_Encoding : Character;
      pragma Import (C, WC_Encoding, "__gl_wc_encoding");
      Locking_Policy : Character;
      pragma Import (C, Locking_Policy, "__gl_locking_policy");
      Queuing_Policy : Character;
      pragma Import (C, Queuing_Policy, "__gl_queuing_policy");
      Task_Dispatching_Policy : Character;
      pragma Import (C, Task_Dispatching_Policy, "__gl_task_dispatching_policy");
      Priority_Specific_Dispatching : System.Address;
      pragma Import (C, Priority_Specific_Dispatching, "__gl_priority_specific_dispatching");
      Num_Specific_Dispatching : Integer;
      pragma Import (C, Num_Specific_Dispatching, "__gl_num_specific_dispatching");
      Main_CPU : Integer;
      pragma Import (C, Main_CPU, "__gl_main_cpu");
      Interrupt_States : System.Address;
      pragma Import (C, Interrupt_States, "__gl_interrupt_states");
      Num_Interrupt_States : Integer;
      pragma Import (C, Num_Interrupt_States, "__gl_num_interrupt_states");
      Unreserve_All_Interrupts : Integer;
      pragma Import (C, Unreserve_All_Interrupts, "__gl_unreserve_all_interrupts");
      Detect_Blocking : Integer;
      pragma Import (C, Detect_Blocking, "__gl_detect_blocking");
      Default_Stack_Size : Integer;
      pragma Import (C, Default_Stack_Size, "__gl_default_stack_size");
      Leap_Seconds_Support : Integer;
      pragma Import (C, Leap_Seconds_Support, "__gl_leap_seconds_support");

      procedure Install_Handler;
      pragma Import (C, Install_Handler, "__gnat_install_handler");

      Handler_Installed : Integer;
      pragma Import (C, Handler_Installed, "__gnat_handler_installed");

      Finalize_Library_Objects : No_Param_Proc;
      pragma Import (C, Finalize_Library_Objects, "__gnat_finalize_library_objects");
   begin
      if Is_Elaborated then
         return;
      end if;
      Is_Elaborated := True;
      Main_Priority := -1;
      Time_Slice_Value := -1;
      WC_Encoding := 'b';
      Locking_Policy := ' ';
      Queuing_Policy := ' ';
      Task_Dispatching_Policy := ' ';
      System.Restrictions.Run_Time_Restrictions :=
        (Set =>
          (False, False, False, False, False, False, False, False, 
           False, False, False, False, False, False, False, False, 
           False, False, False, False, False, False, False, False, 
           False, False, False, False, False, False, False, False, 
           False, False, False, False, False, False, False, False, 
           False, False, False, False, False, False, False, False, 
           False, False, False, False, False, False, False, False, 
           False, False, False, False, False, False, False, False, 
           False, False, False, False, False, False, False, False, 
           True, False, False, False, False, False, False, False, 
           False, False, False, False, False, False),
         Value => (0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
         Violated =>
          (False, False, False, True, True, False, False, False, 
           False, False, False, True, True, True, False, False, 
           True, False, False, True, True, False, True, True, 
           False, True, True, True, True, False, False, True, 
           False, True, False, False, True, False, True, False, 
           False, True, False, False, False, True, False, False, 
           False, True, False, True, True, False, False, False, 
           True, False, True, True, True, False, False, True, 
           False, False, True, False, True, True, False, True, 
           True, True, False, True, False, False, False, False, 
           False, False, True, False, False, False),
         Count => (0, 0, 0, 0, 0, 0, 1, 0, 0, 0),
         Unknown => (False, False, False, False, False, False, True, False, False, False));
      Priority_Specific_Dispatching :=
        Local_Priority_Specific_Dispatching'Address;
      Num_Specific_Dispatching := 0;
      Main_CPU := -1;
      Interrupt_States := Local_Interrupt_States'Address;
      Num_Interrupt_States := 23;
      Unreserve_All_Interrupts := 0;
      Detect_Blocking := 0;
      Default_Stack_Size := -1;
      Leap_Seconds_Support := 0;

      if Handler_Installed = 0 then
         Install_Handler;
      end if;

      if E040 = 0 then
         System.Soft_Links'Elab_Spec;
      end if;
      if E050 = 0 then
         System.Exception_Table'Elab_Body;
      end if;
      E050 := E050 + 1;
      if E143 = 0 then
         Ada.Containers'Elab_Spec;
      end if;
      E143 := E143 + 1;
      if E095 = 0 then
         Ada.Io_Exceptions'Elab_Spec;
      end if;
      E095 := E095 + 1;
      if E072 = 0 then
         Ada.Tags'Elab_Spec;
      end if;
      if E094 = 0 then
         Ada.Streams'Elab_Spec;
      end if;
      E094 := E094 + 1;
      if E085 = 0 then
         Interfaces.C'Elab_Spec;
      end if;
      if E087 = 0 then
         Interfaces.C.Strings'Elab_Spec;
      end if;
      if E052 = 0 then
         System.Exceptions'Elab_Spec;
      end if;
      E052 := E052 + 1;
      if E097 = 0 then
         System.Finalization_Root'Elab_Spec;
      end if;
      E097 := E097 + 1;
      if E092 = 0 then
         Ada.Finalization'Elab_Spec;
      end if;
      E092 := E092 + 1;
      if E127 = 0 then
         System.Storage_Pools'Elab_Spec;
      end if;
      E127 := E127 + 1;
      if E119 = 0 then
         System.Finalization_Masters'Elab_Spec;
      end if;
      if E133 = 0 then
         System.Storage_Pools.Subpools'Elab_Spec;
      end if;
      if E175 = 0 then
         System.Task_Info'Elab_Spec;
      end if;
      E175 := E175 + 1;
      if E129 = 0 then
         System.Pool_Global'Elab_Spec;
      end if;
      E129 := E129 + 1;
      if E117 = 0 then
         System.File_Control_Block'Elab_Spec;
      end if;
      E117 := E117 + 1;
      if E226 = 0 then
         Ada.Streams.Stream_Io'Elab_Spec;
      end if;
      E226 := E226 + 1;
      if E110 = 0 then
         System.File_Io'Elab_Body;
      end if;
      E110 := E110 + 1;
      E133 := E133 + 1;
      if E119 = 0 then
         System.Finalization_Masters'Elab_Body;
      end if;
      E119 := E119 + 1;
      E087 := E087 + 1;
      E085 := E085 + 1;
      if E072 = 0 then
         Ada.Tags'Elab_Body;
      end if;
      E072 := E072 + 1;
      if E040 = 0 then
         System.Soft_Links'Elab_Body;
      end if;
      E040 := E040 + 1;
      if E114 = 0 then
         System.Os_Lib'Elab_Body;
      end if;
      E114 := E114 + 1;
      if E044 = 0 then
         System.Secondary_Stack'Elab_Body;
      end if;
      E044 := E044 + 1;
      if E224 = 0 then
         System.Strings.Stream_Ops'Elab_Body;
      end if;
      E224 := E224 + 1;
      if E195 = 0 then
         System.Tasking.Initialization'Elab_Body;
      end if;
      E195 := E195 + 1;
      if E153 = 0 then
         Ada.Real_Time'Elab_Spec;
      end if;
      if E153 = 0 then
         Ada.Real_Time'Elab_Body;
      end if;
      E153 := E153 + 1;
      if E106 = 0 then
         Ada.Text_Io'Elab_Spec;
      end if;
      if E106 = 0 then
         Ada.Text_Io'Elab_Body;
      end if;
      E106 := E106 + 1;
      if E203 = 0 then
         System.Tasking.Protected_Objects'Elab_Body;
      end if;
      E203 := E203 + 1;
      if E207 = 0 then
         System.Tasking.Protected_Objects.Entries'Elab_Spec;
      end if;
      E207 := E207 + 1;
      if E201 = 0 then
         System.Tasking.Queuing'Elab_Body;
      end if;
      E201 := E201 + 1;
      if E219 = 0 then
         System.Tasking.Stages'Elab_Body;
      end if;
      E219 := E219 + 1;
      if E151 = 0 then
         System.Interrupts'Elab_Spec;
      end if;
      if E151 = 0 then
         System.Interrupts'Elab_Body;
      end if;
      E151 := E151 + 1;
      if E147 = 0 then
         Interfaces.Java.Jni'Elab_Spec;
      end if;
      E147 := E147 + 1;
      if E099 = 0 then
         AJIS.INTERNAL'ELAB_SPEC;
      end if;
      E099 := E099 + 1;
      if E136 = 0 then
         AJIS.JAVA'ELAB_SPEC;
      end if;
      E136 := E136 + 1;
      E030 := E030 + 1;
      if E101 = 0 then
         AJIS.INTERNAL.JAVA'ELAB_SPEC;
      end if;
      if E101 = 0 then
         AJIS.INTERNAL.JAVA'ELAB_BODY;
      end if;
      E101 := E101 + 1;
      E002 := E002 + 1;
      E026 := E026 + 1;
      E020 := E020 + 1;
      if E022 = 0 then
         Jni_Binding.Ada_Jni.Exceptions_Jni'Elab_Spec;
      end if;
      E022 := E022 + 1;
      if E024 = 0 then
         Jni_Binding.Ada_Jni.Exceptions_Jni.Exception_Occurrence_Jni'Elab_Spec;
      end if;
      E024 := E024 + 1;
      if E004 = 0 then
         Jni_Binding.Standard_Jni'Elab_Body;
      end if;
      E004 := E004 + 1;
      if E014 = 0 then
         Jni_Binding.Q4_Jni'Elab_Spec;
      end if;
      E014 := E014 + 1;
      E018 := E018 + 1;
      if E016 = 0 then
         Jni_Binding.Q4_Jni.Target_Jni'Elab_Spec;
      end if;
      E016 := E016 + 1;
      if E012 = 0 then
         Jni_Binding.Standard_Jni.Adastring_Jni'Elab_Spec;
      end if;
      E012 := E012 + 1;
      if E010 = 0 then
         Jni_Binding.Standard_Jni.Constraint_Error_Jni'Elab_Body;
      end if;
      E010 := E010 + 1;
      if E008 = 0 then
         Jni_Binding.Standard_Jni.Program_Error_Jni'Elab_Body;
      end if;
      E008 := E008 + 1;
      if E006 = 0 then
         Jni_Binding.Standard_Jni.Storage_Error_Jni'Elab_Body;
      end if;
      E006 := E006 + 1;
      E028 := E028 + 1;
   end quizinit;

--  BEGIN Object file/option list
   --   C:\AdaCoreU\04_Ada_And_Java\Quiz\Q4\src\ada2java\ada\obj\q4.o
   --   C:\AdaCoreU\04_Ada_And_Java\Quiz\Q4\src\ada2java\ada\obj\jni_binding.o
   --   C:\AdaCoreU\04_Ada_And_Java\Quiz\Q4\src\ada2java\ada\obj\jni_binding-ada2java_jni.o
   --   C:\AdaCoreU\04_Ada_And_Java\Quiz\Q4\src\ada2java\ada\obj\jni_binding-ada_jni.o
   --   C:\AdaCoreU\04_Ada_And_Java\Quiz\Q4\src\ada2java\ada\obj\jni_binding-ada_jni-exceptions_jni.o
   --   C:\AdaCoreU\04_Ada_And_Java\Quiz\Q4\src\ada2java\ada\obj\jni_binding-ada_jni-exceptions_jni-exception_occurrence_jni.o
   --   C:\AdaCoreU\04_Ada_And_Java\Quiz\Q4\src\ada2java\ada\obj\jni_binding-standard_jni.o
   --   C:\AdaCoreU\04_Ada_And_Java\Quiz\Q4\src\ada2java\ada\obj\jni_binding-q4_jni.o
   --   C:\AdaCoreU\04_Ada_And_Java\Quiz\Q4\src\ada2java\ada\obj\jni_binding-q4_jni-q4_package_jni.o
   --   C:\AdaCoreU\04_Ada_And_Java\Quiz\Q4\src\ada2java\ada\obj\jni_binding-q4_jni-target_jni.o
   --   C:\AdaCoreU\04_Ada_And_Java\Quiz\Q4\src\ada2java\ada\obj\jni_binding-standard_jni-adastring_jni.o
   --   C:\AdaCoreU\04_Ada_And_Java\Quiz\Q4\src\ada2java\ada\obj\jni_binding-standard_jni-constraint_error_jni.o
   --   C:\AdaCoreU\04_Ada_And_Java\Quiz\Q4\src\ada2java\ada\obj\jni_binding-standard_jni-program_error_jni.o
   --   C:\AdaCoreU\04_Ada_And_Java\Quiz\Q4\src\ada2java\ada\obj\jni_binding-standard_jni-storage_error_jni.o
   --   C:\AdaCoreU\04_Ada_And_Java\Quiz\Q4\src\ada2java\ada\obj\jni_binding-ada2java_jni-library_jni.o
   --   -LC:\AdaCoreU\04_Ada_And_Java\Quiz\Q4\src\ada2java\ada\obj\
   --   -LC:\AdaCoreU\04_Ada_And_Java\GNATGPL2014\lib\ajis\relocatable\
   --   -LC:\AdaCoreU\04_Ada_And_Java\GNATGPL2014\lib\gnatjni\relocatable\
   --   -LC:/adacoreu/04_ada_and_java/gnatgpl2014/lib/gcc/i686-pc-mingw32/4.7.4/adalib/
   --   -static
   --   -lgnarl
   --   -lgnat
   --   -Xlinker
   --   --stack=0x200000,0x1000
   --   -mthreads
   --   -Wl,--stack=0x2000000
--  END Object file/option list   

end quizmain;
