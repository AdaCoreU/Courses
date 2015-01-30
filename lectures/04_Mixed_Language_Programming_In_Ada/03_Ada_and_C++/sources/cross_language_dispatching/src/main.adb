with Extensions; use Extensions;
with CPP; use CPP;

procedure Main is
   A_Base  : aliased Base;
   A_Child : aliased Child;
begin
   CPP_Cross_Call (A_Base'Access);
   CPP_Cross_Call (A_Child'Access);
   Ada_Cross_Call (A_Base'Access);
   Ada_Cross_Call (A_Child'Access);
end Main;
