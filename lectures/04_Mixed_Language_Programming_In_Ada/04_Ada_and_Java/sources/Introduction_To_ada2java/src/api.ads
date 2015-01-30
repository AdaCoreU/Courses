package API is
   type R is record
      F1, F2 : Integer;
   end record;
   
   procedure Print(Str : String; V : R);
end API;