with Display;use Display;
with Display.Basic; use Display.Basic;

package Stars is

   type Star_Index is range 1 .. Integer'Last;

   type Star_Record is record
      X, Y         : Float      := 0.0;
      Speed        : Float      := 0.0;
      Distance     : Float      := 0.0;
      Angle        : Float      := 0.0;
      Turns_Around : Star_Index := Star_Index'Last;
      Graphic      : Shape_Id   := Null_Shape_Id;
   end record;

   type Star_System is array (Star_Index range <>) of Star_Record;

   procedure Move_Around (The_Star : in out Star_Record; Around : Star_Record);

   function Create_Star
     (Size          : Float;
      Color         : Color_Type;
      Speed         : Float;
      Turns_Around  : Star_Index;
      Distance      : Float;
      Initial_Angle : Float := 0.0)
      return         Star_Record;

   function Create_Axis
     (Speed        : Float;
      Turns_Around : Star_Index;
      Distance     : Float)
      return         Star_Record;

end Stars;
