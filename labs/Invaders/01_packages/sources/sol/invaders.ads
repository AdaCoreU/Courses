-----------------------------------------------------------------------
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

with Display.Basic;

package Invaders is

   type Object is record
      X, Y    : Float;
      Graphic : Display.Basic.Shape_Id;
   end record;

   function Collision (Foe, Ammo : Object) return Boolean;

   procedure Refresh (O : in out Object; Is_Ammo : Boolean);

   type Direction is (Left, Right);

   procedure Move_Player (Player : in out Object; Dir : Direction);

   procedure Move_Ammo (Ammo : in out Object);

   procedure Move_Foe (Foe : in out Object);

   procedure Shoot (Player : Object; Ammo : in out Object);

end Invaders;
