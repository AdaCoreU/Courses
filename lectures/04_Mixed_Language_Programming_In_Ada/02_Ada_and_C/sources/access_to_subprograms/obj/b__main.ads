pragma Ada_95;
with System;
package ada_main is
   pragma Warnings (Off);

   gnat_argc : Integer;
   gnat_argv : System.Address;
   gnat_envp : System.Address;

   pragma Import (C, gnat_argc);
   pragma Import (C, gnat_argv);
   pragma Import (C, gnat_envp);

   gnat_exit_status : Integer;
   pragma Import (C, gnat_exit_status);

   GNAT_Version : constant String :=
                    "GNAT Version: GPL 2014 (20140331)" & ASCII.NUL;
   pragma Export (C, GNAT_Version, "__gnat_version");

   Ada_Main_Program_Name : constant String := "_ada_main" & ASCII.NUL;
   pragma Export (C, Ada_Main_Program_Name, "__gnat_ada_main_program_name");

   procedure adainit;
   pragma Export (C, adainit, "adainit");

   procedure adafinal;
   pragma Export (C, adafinal, "adafinal");

   function main
     (argc : Integer;
      argv : System.Address;
      envp : System.Address)
      return Integer;
   pragma Export (C, main, "main");

   type Version_32 is mod 2 ** 32;
   u00001 : constant Version_32 := 16#440fdb55#;
   pragma Export (C, u00001, "mainB");
   u00002 : constant Version_32 := 16#fbff4c67#;
   pragma Export (C, u00002, "system__standard_libraryB");
   u00003 : constant Version_32 := 16#5c291747#;
   pragma Export (C, u00003, "system__standard_libraryS");
   u00004 : constant Version_32 := 16#69adb1b9#;
   pragma Export (C, u00004, "interfacesS");
   u00005 : constant Version_32 := 16#769e25e6#;
   pragma Export (C, u00005, "interfaces__cB");
   u00006 : constant Version_32 := 16#3b563890#;
   pragma Export (C, u00006, "interfaces__cS");
   u00007 : constant Version_32 := 16#eaff8cdc#;
   pragma Export (C, u00007, "ada__exceptionsB");
   u00008 : constant Version_32 := 16#6a2091f5#;
   pragma Export (C, u00008, "ada__exceptionsS");
   u00009 : constant Version_32 := 16#3ffc8e18#;
   pragma Export (C, u00009, "adaS");
   u00010 : constant Version_32 := 16#032105bb#;
   pragma Export (C, u00010, "ada__exceptions__last_chance_handlerB");
   u00011 : constant Version_32 := 16#2b293877#;
   pragma Export (C, u00011, "ada__exceptions__last_chance_handlerS");
   u00012 : constant Version_32 := 16#5fc8ae56#;
   pragma Export (C, u00012, "systemS");
   u00013 : constant Version_32 := 16#daf76b33#;
   pragma Export (C, u00013, "system__soft_linksB");
   u00014 : constant Version_32 := 16#1517cb64#;
   pragma Export (C, u00014, "system__soft_linksS");
   u00015 : constant Version_32 := 16#c8ed38da#;
   pragma Export (C, u00015, "system__parametersB");
   u00016 : constant Version_32 := 16#591236e4#;
   pragma Export (C, u00016, "system__parametersS");
   u00017 : constant Version_32 := 16#c96bf39e#;
   pragma Export (C, u00017, "system__secondary_stackB");
   u00018 : constant Version_32 := 16#f4a9613f#;
   pragma Export (C, u00018, "system__secondary_stackS");
   u00019 : constant Version_32 := 16#39a03df9#;
   pragma Export (C, u00019, "system__storage_elementsB");
   u00020 : constant Version_32 := 16#720be452#;
   pragma Export (C, u00020, "system__storage_elementsS");
   u00021 : constant Version_32 := 16#41837d1e#;
   pragma Export (C, u00021, "system__stack_checkingB");
   u00022 : constant Version_32 := 16#d177c5be#;
   pragma Export (C, u00022, "system__stack_checkingS");
   u00023 : constant Version_32 := 16#393398c1#;
   pragma Export (C, u00023, "system__exception_tableB");
   u00024 : constant Version_32 := 16#f1d1c843#;
   pragma Export (C, u00024, "system__exception_tableS");
   u00025 : constant Version_32 := 16#ce4af020#;
   pragma Export (C, u00025, "system__exceptionsB");
   u00026 : constant Version_32 := 16#37abc3a0#;
   pragma Export (C, u00026, "system__exceptionsS");
   u00027 : constant Version_32 := 16#2652ec14#;
   pragma Export (C, u00027, "system__exceptions__machineS");
   u00028 : constant Version_32 := 16#b895431d#;
   pragma Export (C, u00028, "system__exceptions_debugB");
   u00029 : constant Version_32 := 16#ec2ab7e8#;
   pragma Export (C, u00029, "system__exceptions_debugS");
   u00030 : constant Version_32 := 16#570325c8#;
   pragma Export (C, u00030, "system__img_intB");
   u00031 : constant Version_32 := 16#5d134e94#;
   pragma Export (C, u00031, "system__img_intS");
   u00032 : constant Version_32 := 16#ff5c7695#;
   pragma Export (C, u00032, "system__tracebackB");
   u00033 : constant Version_32 := 16#77cc310b#;
   pragma Export (C, u00033, "system__tracebackS");
   u00034 : constant Version_32 := 16#8c33a517#;
   pragma Export (C, u00034, "system__wch_conB");
   u00035 : constant Version_32 := 16#44b58c84#;
   pragma Export (C, u00035, "system__wch_conS");
   u00036 : constant Version_32 := 16#9721e840#;
   pragma Export (C, u00036, "system__wch_stwB");
   u00037 : constant Version_32 := 16#69a4a085#;
   pragma Export (C, u00037, "system__wch_stwS");
   u00038 : constant Version_32 := 16#9b29844d#;
   pragma Export (C, u00038, "system__wch_cnvB");
   u00039 : constant Version_32 := 16#4b023677#;
   pragma Export (C, u00039, "system__wch_cnvS");
   u00040 : constant Version_32 := 16#ece6fdb6#;
   pragma Export (C, u00040, "system__wch_jisB");
   u00041 : constant Version_32 := 16#cb722f56#;
   pragma Export (C, u00041, "system__wch_jisS");
   u00042 : constant Version_32 := 16#8cb17bcd#;
   pragma Export (C, u00042, "system__traceback_entriesB");
   u00043 : constant Version_32 := 16#ead9cec4#;
   pragma Export (C, u00043, "system__traceback_entriesS");
   u00044 : constant Version_32 := 16#3a4ba6c3#;
   pragma Export (C, u00044, "system__memoryB");
   u00045 : constant Version_32 := 16#06b5c862#;
   pragma Export (C, u00045, "system__memoryS");
   --  BEGIN ELABORATION ORDER
   --  ada%s
   --  interfaces%s
   --  system%s
   --  system.img_int%s
   --  system.img_int%b
   --  system.parameters%s
   --  system.parameters%b
   --  system.standard_library%s
   --  system.exceptions_debug%s
   --  system.exceptions_debug%b
   --  system.storage_elements%s
   --  system.storage_elements%b
   --  system.stack_checking%s
   --  system.stack_checking%b
   --  system.traceback_entries%s
   --  system.traceback_entries%b
   --  ada.exceptions%s
   --  system.soft_links%s
   --  system.wch_con%s
   --  system.wch_con%b
   --  system.wch_cnv%s
   --  system.wch_jis%s
   --  system.wch_jis%b
   --  system.wch_cnv%b
   --  system.wch_stw%s
   --  system.wch_stw%b
   --  ada.exceptions.last_chance_handler%s
   --  ada.exceptions.last_chance_handler%b
   --  system.exception_table%s
   --  system.exception_table%b
   --  interfaces.c%s
   --  system.exceptions%s
   --  system.exceptions%b
   --  system.exceptions.machine%s
   --  system.memory%s
   --  system.memory%b
   --  system.standard_library%b
   --  system.secondary_stack%s
   --  interfaces.c%b
   --  system.soft_links%b
   --  system.secondary_stack%b
   --  system.traceback%s
   --  ada.exceptions%b
   --  system.traceback%b
   --  main%b
   --  END ELABORATION ORDER


end ada_main;
