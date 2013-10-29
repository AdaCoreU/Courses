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

with Ada.Text_IO;                       use Ada.Text_IO;
with Ada.Numerics;                      use Ada.Numerics;
with Ada.Numerics.Elementary_Functions; use Ada.Numerics.Elementary_Functions;

with Display;       use Display;
with Display.Basic; use Display.Basic;

with Stars; use Stars;

procedure Main is

   My_Stars : Star_System (1 .. 8);

   Sun          : Star_Index := 1;
   Earth        : Star_Index := 2;
   Moon         : Star_Index := 3;
   Satellite    : Star_Index := 4;
   Comet        : Star_Index := 5;
   Asteroid_Axis : Star_Index := 6;
   Asteroid_1   : Star_Index := 7;
   Asteroid_2   : Star_Index := 8;

begin
   My_Stars (Sun)       := Create_Star (20.0, Yellow, 0.0, Sun, 0.0);
   My_Stars (Earth)     := Create_Star (5.0, Blue, 0.005, Sun, 50.0);
   My_Stars (Moon)      := Create_Star (2.0, White, -0.03, Earth, 10.0);
   My_Stars (Satellite) := Create_Star (0.8, Red, 0.007, Earth, 6.0);
   My_Stars (Comet)     := Create_Star (2.0, Cyan, 0.02, Sun, 75.0);
   My_Stars (Asteroid_Axis) := Create_Axis (0.012, Sun, 75.0);
   My_Stars (Asteroid_1) := Create_Star (3.0, White, 0.07, Asteroid_Axis, 5.0, 0.0);
   My_Stars (Asteroid_2) := Create_Star (3.0, White, 0.07, Asteroid_Axis, 5.0, Pi);


   loop
      delay 0.01;

      for J in My_Stars'Range loop
         if My_Stars (J).Turns_Around in My_Stars'Range then
            Move_Around (My_Stars (J), My_Stars (My_Stars (J).Turns_Around));
         end if;
      end loop;
   end loop;
end Main;
