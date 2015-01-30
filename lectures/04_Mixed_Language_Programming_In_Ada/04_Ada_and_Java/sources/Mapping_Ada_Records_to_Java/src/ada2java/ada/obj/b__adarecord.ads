pragma Ada_95;
with System;
package adarecordmain is
   pragma Warnings (Off);

   procedure adarecordinit;
   pragma Export (C, adarecordinit, "adarecordinit");

   procedure adarecordfinal;
   pragma Export (C, adarecordfinal, "adarecordfinal");

   type Version_32 is mod 2 ** 32;
   u00001 : constant Version_32 := 16#4de9f535#;
   pragma Export (C, u00001, "jni_bindingB");
   u00002 : constant Version_32 := 16#e588dcaf#;
   pragma Export (C, u00002, "jni_bindingS");
   u00003 : constant Version_32 := 16#4826fef9#;
   pragma Export (C, u00003, "jni_binding__standard_jniB");
   u00004 : constant Version_32 := 16#89de43a1#;
   pragma Export (C, u00004, "jni_binding__standard_jniS");
   u00005 : constant Version_32 := 16#86abef1e#;
   pragma Export (C, u00005, "jni_binding__standard_jni__storage_error_jniB");
   u00006 : constant Version_32 := 16#2da9de0d#;
   pragma Export (C, u00006, "jni_binding__standard_jni__storage_error_jniS");
   u00007 : constant Version_32 := 16#06e215e1#;
   pragma Export (C, u00007, "jni_binding__standard_jni__program_error_jniB");
   u00008 : constant Version_32 := 16#f1f717d7#;
   pragma Export (C, u00008, "jni_binding__standard_jni__program_error_jniS");
   u00009 : constant Version_32 := 16#6163191b#;
   pragma Export (C, u00009, "jni_binding__standard_jni__constraint_error_jniB");
   u00010 : constant Version_32 := 16#0963a447#;
   pragma Export (C, u00010, "jni_binding__standard_jni__constraint_error_jniS");
   u00011 : constant Version_32 := 16#c4df951e#;
   pragma Export (C, u00011, "jni_binding__standard_jni__adastring_jniB");
   u00012 : constant Version_32 := 16#9d441946#;
   pragma Export (C, u00012, "jni_binding__standard_jni__adastring_jniS");
   u00013 : constant Version_32 := 16#fe906d09#;
   pragma Export (C, u00013, "jni_binding__record_types_jniB");
   u00014 : constant Version_32 := 16#619dfefd#;
   pragma Export (C, u00014, "jni_binding__record_types_jniS");
   u00015 : constant Version_32 := 16#4525e4e1#;
   pragma Export (C, u00015, "jni_binding__record_types_jni__record_types_package_jniB");
   u00016 : constant Version_32 := 16#3f4dfd1f#;
   pragma Export (C, u00016, "jni_binding__record_types_jni__record_types_package_jniS");
   u00017 : constant Version_32 := 16#5fbc4356#;
   pragma Export (C, u00017, "jni_binding__record_types_jni__a_record_type_jniB");
   u00018 : constant Version_32 := 16#06bbfd31#;
   pragma Export (C, u00018, "jni_binding__record_types_jni__a_record_type_jniS");
   u00019 : constant Version_32 := 16#2eb03430#;
   pragma Export (C, u00019, "jni_binding__record_types_jni__a_nested_record_type_jniB");
   u00020 : constant Version_32 := 16#be88c486#;
   pragma Export (C, u00020, "jni_binding__record_types_jni__a_nested_record_type_jniS");
   u00021 : constant Version_32 := 16#424cddc7#;
   pragma Export (C, u00021, "jni_binding__ada_jniB");
   u00022 : constant Version_32 := 16#8cbbede6#;
   pragma Export (C, u00022, "jni_binding__ada_jniS");
   u00023 : constant Version_32 := 16#b7fb5292#;
   pragma Export (C, u00023, "jni_binding__ada_jni__exceptions_jniB");
   u00024 : constant Version_32 := 16#001e3514#;
   pragma Export (C, u00024, "jni_binding__ada_jni__exceptions_jniS");
   u00025 : constant Version_32 := 16#c5d6c87c#;
   pragma Export (C, u00025, "jni_binding__ada_jni__exceptions_jni__exception_occurrence_jniB");
   u00026 : constant Version_32 := 16#e6402237#;
   pragma Export (C, u00026, "jni_binding__ada_jni__exceptions_jni__exception_occurrence_jniS");
   u00027 : constant Version_32 := 16#6fd08d2a#;
   pragma Export (C, u00027, "jni_binding__ada2java_jniB");
   u00028 : constant Version_32 := 16#e18ef211#;
   pragma Export (C, u00028, "jni_binding__ada2java_jniS");
   u00029 : constant Version_32 := 16#cca3c194#;
   pragma Export (C, u00029, "jni_binding__ada2java_jni__library_jniB");
   u00030 : constant Version_32 := 16#c524676f#;
   pragma Export (C, u00030, "jni_binding__ada2java_jni__library_jniS");
   u00031 : constant Version_32 := 16#0daf7e3c#;
   pragma Export (C, u00031, "record_typesB");
   u00032 : constant Version_32 := 16#b7b2711d#;
   pragma Export (C, u00032, "record_typesS");
   --  BEGIN ELABORATION ORDER
   --  ada%s
   --  ada.characters%s
   --  ada.characters.conversions%s
   --  ada.environment_variables%s
   --  interfaces%s
   --  system%s
   --  system.address_operations%s
   --  system.address_operations%b
   --  system.arith_64%s
   --  system.case_util%s
   --  system.case_util%b
   --  system.float_control%s
   --  system.float_control%b
   --  system.htable%s
   --  system.img_bool%s
   --  system.img_bool%b
   --  system.img_enum_new%s
   --  system.img_enum_new%b
   --  system.img_int%s
   --  system.img_int%b
   --  system.io%s
   --  system.io%b
   --  system.multiprocessors%s
   --  system.os_primitives%s
   --  system.parameters%s
   --  system.parameters%b
   --  system.crtl%s
   --  interfaces.c_streams%s
   --  interfaces.c_streams%b
   --  system.restrictions%s
   --  system.restrictions%b
   --  system.standard_library%s
   --  system.exceptions_debug%s
   --  system.exceptions_debug%b
   --  system.storage_elements%s
   --  system.storage_elements%b
   --  system.stack_checking%s
   --  system.stack_checking%b
   --  system.stack_usage%s
   --  system.stack_usage%b
   --  system.string_hash%s
   --  system.string_hash%b
   --  system.htable%b
   --  system.strings%s
   --  system.strings%b
   --  system.os_lib%s
   --  system.task_lock%s
   --  system.traceback_entries%s
   --  system.traceback_entries%b
   --  ada.exceptions%s
   --  system.arith_64%b
   --  ada.exceptions.is_null_occurrence%s
   --  ada.exceptions.is_null_occurrence%b
   --  system.soft_links%s
   --  system.task_lock%b
   --  system.traces%s
   --  system.traces%b
   --  system.unsigned_types%s
   --  system.img_uns%s
   --  system.img_uns%b
   --  system.val_uns%s
   --  system.val_util%s
   --  system.val_util%b
   --  system.val_uns%b
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
   --  interfaces.java%s
   --  system.address_image%s
   --  system.compare_array_unsigned_8%s
   --  system.compare_array_unsigned_8%b
   --  system.concat_2%s
   --  system.concat_2%b
   --  system.concat_3%s
   --  system.concat_3%b
   --  system.concat_4%s
   --  system.concat_4%b
   --  system.concat_5%s
   --  system.concat_5%b
   --  system.concat_6%s
   --  system.concat_6%b
   --  system.exception_table%s
   --  system.exception_table%b
   --  ada.containers%s
   --  ada.containers.red_black_trees%s
   --  ada.io_exceptions%s
   --  ada.tags%s
   --  ada.streams%s
   --  ada.streams%b
   --  interfaces.c%s
   --  system.multiprocessors%b
   --  interfaces.c.strings%s
   --  system.communication%s
   --  system.communication%b
   --  system.exceptions%s
   --  system.exceptions%b
   --  system.exceptions.machine%s
   --  system.finalization_root%s
   --  system.finalization_root%b
   --  ada.finalization%s
   --  ada.finalization%b
   --  system.storage_pools%s
   --  system.storage_pools%b
   --  system.finalization_masters%s
   --  system.storage_pools.subpools%s
   --  system.storage_pools.subpools.finalization%s
   --  system.storage_pools.subpools.finalization%b
   --  system.stream_attributes%s
   --  system.stream_attributes%b
   --  system.win32%s
   --  system.os_interface%s
   --  system.interrupt_management%s
   --  system.interrupt_management%b
   --  system.task_info%s
   --  system.task_info%b
   --  system.task_primitives%s
   --  system.tasking%s
   --  ada.task_identification%s
   --  system.task_primitives.operations%s
   --  system.tasking%b
   --  system.tasking.debug%s
   --  system.traces.tasking%s
   --  system.traces.tasking%b
   --  system.win32.ext%s
   --  system.task_primitives.operations%b
   --  system.os_primitives%b
   --  system.memory%s
   --  system.memory%b
   --  system.standard_library%b
   --  system.pool_global%s
   --  system.pool_global%b
   --  system.file_control_block%s
   --  ada.streams.stream_io%s
   --  system.file_io%s
   --  ada.streams.stream_io%b
   --  system.secondary_stack%s
   --  system.file_io%b
   --  system.tasking.debug%b
   --  system.storage_pools.subpools%b
   --  system.finalization_masters%b
   --  interfaces.c.strings%b
   --  interfaces.c%b
   --  ada.tags%b
   --  system.soft_links%b
   --  system.os_lib%b
   --  ada.environment_variables%b
   --  ada.characters.conversions%b
   --  system.secondary_stack%b
   --  system.address_image%b
   --  system.soft_links.tasking%s
   --  system.soft_links.tasking%b
   --  system.strings.stream_ops%s
   --  system.strings.stream_ops%b
   --  system.tasking.entry_calls%s
   --  system.tasking.initialization%s
   --  system.tasking.utilities%s
   --  ada.task_identification%b
   --  system.traceback%s
   --  ada.exceptions%b
   --  system.traceback%b
   --  system.tasking.initialization%b
   --  ada.real_time%s
   --  ada.real_time%b
   --  ada.text_io%s
   --  ada.text_io%b
   --  system.tasking.protected_objects%s
   --  system.tasking.protected_objects%b
   --  system.tasking.protected_objects.entries%s
   --  system.tasking.protected_objects.entries%b
   --  system.tasking.queuing%s
   --  system.tasking.queuing%b
   --  system.tasking.utilities%b
   --  system.tasking.rendezvous%s
   --  system.tasking.protected_objects.operations%s
   --  system.tasking.protected_objects.operations%b
   --  system.tasking.rendezvous%b
   --  system.tasking.entry_calls%b
   --  system.tasking.stages%s
   --  system.tasking.stages%b
   --  system.interrupts%s
   --  system.interrupts%b
   --  ada.interrupts%s
   --  ada.interrupts%b
   --  ada.interrupts.names%s
   --  interfaces.java.jni%s
   --  interfaces.java.jni%b
   --  ajis%s
   --  ajis.internal%s
   --  ajis.java%s
   --  record_types%s
   --  record_types%b
   --  ajis.internal.java%s
   --  ajis.internal.java%b
   --  jni_binding%s
   --  jni_binding%b
   --  jni_binding.ada2java_jni%s
   --  jni_binding.ada2java_jni%b
   --  jni_binding.ada2java_jni.library_jni%s
   --  jni_binding.ada_jni%s
   --  jni_binding.ada_jni%b
   --  jni_binding.ada_jni.exceptions_jni%s
   --  jni_binding.ada_jni.exceptions_jni%b
   --  jni_binding.ada_jni.exceptions_jni.exception_occurrence_jni%s
   --  jni_binding.ada_jni.exceptions_jni.exception_occurrence_jni%b
   --  jni_binding.standard_jni%s
   --  jni_binding.standard_jni%b
   --  jni_binding.record_types_jni%s
   --  jni_binding.record_types_jni%b
   --  jni_binding.record_types_jni.a_nested_record_type_jni%s
   --  jni_binding.record_types_jni.a_nested_record_type_jni%b
   --  jni_binding.record_types_jni.a_record_type_jni%s
   --  jni_binding.record_types_jni.a_record_type_jni%b
   --  jni_binding.record_types_jni.record_types_package_jni%s
   --  jni_binding.record_types_jni.record_types_package_jni%b
   --  jni_binding.standard_jni.adastring_jni%s
   --  jni_binding.standard_jni.adastring_jni%b
   --  jni_binding.standard_jni.constraint_error_jni%s
   --  jni_binding.standard_jni.constraint_error_jni%b
   --  jni_binding.standard_jni.program_error_jni%s
   --  jni_binding.standard_jni.program_error_jni%b
   --  jni_binding.standard_jni.storage_error_jni%s
   --  jni_binding.standard_jni.storage_error_jni%b
   --  jni_binding.ada2java_jni.library_jni%b
   --  END ELABORATION ORDER


end adarecordmain;
