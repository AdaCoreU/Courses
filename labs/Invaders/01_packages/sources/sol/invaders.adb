-----------------------------------------------------------------------
--                              Ada Labs                             --
--                                                                   --
--                 Copyright (C) 2008-2013, AdaCore                  --
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

with Display;       use Display;
with Display.Basic; use Display.Basic;

package body Invaders is

   function Collision (Foe, Ammo : Object) return Boolean is
      Dx, Dy : Float;
      Min_Distance : Float;
   begin
      Dx := Foe.X - Ammo.X;
      Dy := Foe.Y - Ammo.Y;
      Min_Distance := Get_Radius (Foe.Graphic);

      return Dx * Dx + Dy * Dy < Min_Distance * Min_Distance;
   end Collision;

   procedure Refresh (O : in out Object; Is_Ammo : Boolean) is
   begin
      Set_X (O.Graphic, O.X);
      Set_Y (O.Graphic, O.Y);

      if Is_Ammo then
         Set_X2 (O.Graphic, O.X);
         Set_Y2 (O.Graphic, O.Y - 2.0);
      end if;
   end Refresh;

   procedure Move_Player (Player : in out Object; Dir : Direction) is
      Lateral_Movement : constant := 1.0;
   begin
      case Dir is
         when Left =>
            Player.X := Player.X - Lateral_Movement;

         when Right =>
            Player.X := Player.X + Lateral_Movement;
      end case;
   end Move_Player;

   procedure Move_Ammo (Ammo : in out Object) is
   begin
      Ammo.Y := Ammo.Y + 0.5;
   end Move_Ammo;

   procedure Move_Foe (Foe : in out Object) is
   begin
      Foe.Y := Foe.Y - 0.5;
   end Move_Foe;

   procedure Shoot (Player : Object; Ammo : in out Object) is
   begin
      Ammo.X := Player.X;
      Ammo.Y := Player.Y;
   end Shoot;

end Invaders;
