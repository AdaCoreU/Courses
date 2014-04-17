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

with Ada.Calendar;              use Ada.Calendar;
with Ada.Numerics;              use Ada.Numerics;
with Ada.Numerics.Float_Random; use Ada.Numerics.Float_Random;

with Display;       use Display;
with Display.Basic; use Display.Basic;

procedure Main is

   type Object is record
      X, Y    : Float;
      Graphic : Display.Basic.Shape_Id;
   end record;

   The_Player : Object;
   The_Foe    : Object;
   The_Ammo   : Object;
   Seed       : Generator;
   Last_Key   : Key_Type;
   Game_Over : exception;

   Lateral_Movement : constant := 1.0;
   Shoot_Command    : constant Character := ' ';
begin

   Reset (Seed, Integer (Seconds (Clock)));

   The_Player.X := 0.0;
   The_Player.Y := -70.0;
   The_Player.Graphic := New_Circle (0.0, -70.0, 10.0, Blue);

   The_Foe.X := Random (Seed) * 100.0 - 50.0;
   The_Foe.Y := 100.0;
   The_Foe.Graphic := New_Circle
     (The_Foe.X,
      The_Foe.Y,
      5.0,
      Red);

   -- Place the ammo somewhere where it's not visible
   The_Ammo.X := 1000.0;
   The_Ammo.Y := 0.0;
   The_Ammo.Graphic := New_Line
     (The_Ammo.X,
      The_Ammo.Y,
      The_Ammo.X,
      The_Ammo.Y - 2.0,
      Yellow);

   while not At_end loop
      delay 0.01;

      Last_Key := Current_Key_Press;

      if To_Special (Last_Key) = KEY_LEFT then
         The_Player.X := The_Player.X - Lateral_Movement;
      elsif To_Special (Last_Key) = KEY_RIGHT then
         The_Player.X := The_Player.X + Lateral_Movement;
      elsif To_Character (Last_Key) = Shoot_Command then
         The_Ammo.X := The_Player.X;
         The_Ammo.Y := The_Player.Y;
      end if;

      -- Move the objects

      The_Ammo.Y := The_Ammo.Y + 0.5;
      The_Foe.Y := The_Foe.Y - 0.5;

      -- Check for collisisions

      if The_Foe.Y < -70.0 then
         raise Game_Over;
      end if;

      declare
         Dx, Dy : Float;
         Min_Distance : Float;
      begin
         Dx := The_Foe.X - The_Ammo.X;
         Dy := The_Foe.Y - The_Ammo.Y;
         Min_Distance := Get_Radius (The_Foe.Graphic);

         if Dx * Dx + Dy * Dy < Min_Distance * Min_Distance then
            --  The ammo has touched the foe - place the foe back on the top
            --  and the ammo somewhere where it's not visible

            The_Foe.Y := 110.0;
            The_Foe.X := Random (Seed) * 100.0 - 50.0;
            The_Ammo.X := 1000.0;
         end if;
      end;

      -- Modify the graphics

      Set_X (The_Player.Graphic, The_Player.X);
      Set_Y (The_Player.Graphic, The_Player.Y);

      Set_X (The_Ammo.Graphic, The_Ammo.X);
      Set_Y (The_Ammo.Graphic, The_Ammo.Y);
      Set_X2 (The_Ammo.Graphic, The_Ammo.X);
      Set_Y2 (The_Ammo.Graphic, The_Ammo.Y - 2.0);

      Set_X (The_Foe.Graphic, The_Foe.X);
      Set_Y (The_Foe.Graphic, The_Foe.Y);
   end loop;
end Main;
