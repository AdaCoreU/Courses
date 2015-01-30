package Tagged_Types is 

   type A_Tagged_Type is tagged null record;
   
   procedure Print_Me (V : A_Tagged_Type; Me : String);
   
   type An_Ada_Child is new A_Tagged_Type with null record;
   
   procedure Print_Me (V : An_Ada_Child; Me : String);
   
   procedure Call_Print_Me (Str : String; Val : A_Tagged_Type'Class);
   
end Tagged_Types;