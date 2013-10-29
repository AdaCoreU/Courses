----------------------------------------------------------------------
---
--                              Ada Labs                             --
--                                                                   --
--                 Copyright (C) 2008-2009, AdaCore                  --
--                                                                   --
-- Labs is free  software; you can redistribute it and/or modify  it --
-- under the terms of the GNU General Public License as published by --
-- the Free Software Foundation; either version 2 of the License, or --
-- (at your option) any later version.                               --
--                                                                   --
-- This program is  distributed in the hope that it will be  useful, --
-- but  WITHOUT ANY WARRANTY;  without even the  implied warranty of --
-- MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU --
-- General Public License for more details. You should have received --
-- a copy of the GNU General Public License along with this program; --
-- if not,  write to the  Free Software Foundation, Inc.,  59 Temple --
-- Place - Suite 330, Boston, MA 02111-1307, USA.                    --
-----------------------------------------------------------------------

with Ada.Numerics;                      use Ada.Numerics;
with Ada.Numerics.Elementary_Functions; use Ada.Numerics.Elementary_Functions;

package body Stars is

   procedure Move_Around
     (The_Star : in out Star_Record; Around : Star_Record)
   is
   begin
      The_Star.Angle := The_Star.Angle + The_Star.Speed;

      The_Star.X := Around.X + Cos (The_Star.Angle) * The_Star.Distance;
      The_Star.Y := Around.Y + Sin (The_Star.Angle) * The_Star.Distance;

      if The_Star.Graphic /= Null_Shape_Id then
         Set_X (The_Star.Graphic, The_Star.X);
         Set_Y (The_Star.Graphic, The_Star.Y);
      end if;
   end Move_Around;

   function Create_Star
     (Size          : Float;
      Color         : Color_Type;
      Speed         : Float;
      Turns_Around  : Star_Index;
      Distance      : Float;
      Initial_Angle : Float := 0.0)
      return         Star_Record
   is
   begin
      return
        (Graphic => New_Circle (0.0, 0.0, Size, Color),
         Speed   => Speed,
         Angle   => Initial_Angle,
         Turns_Around => Turns_Around,
         Distance => Distance,
         others => <>);
   end Create_Star;

   function Create_Axis
     (Speed        : Float;
      Turns_Around : Star_Index;
      Distance     : Float)
      return         Star_Record
   is
   begin
      return
        (Speed   => Speed,
         Turns_Around => Turns_Around,
         Distance => Distance,
         others => <>);
   end Create_Axis;
end Stars;
