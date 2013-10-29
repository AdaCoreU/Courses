with Ada.Numerics.Elementary_Functions; use Ada.Numerics.Elementary_Functions;

with Display;       use Display;
with Display.Basic; use Display.Basic;

procedure Main is
   type Star is (Sun, Earth, Moon, Satellite);
   type Metric is (Speed, Distance, Angle);

   type Shape_Array is array (Star) of Shape_Id;
   type Star_Metric is array (Star, Metric) of Float;

   Stars   : Shape_Array;
   Metrics : Star_Metric;

begin
   Stars (Sun)             := New_Circle (0.0, 0.0, 20.0, Yellow);
   Metrics (Sun, Speed)    := 0.0;
   Metrics (Sun, Distance) := 0.0;
   Metrics (Sun, Angle)    := 0.0;

   Stars (Earth)             := New_Circle (0.0, 0.0, 5.0, Blue);
   Metrics (Earth, Speed)    := 0.005;
   Metrics (Earth, Distance) := 60.0;
   Metrics (Earth, Angle)    := 0.0;

   Stars (Moon)             := New_Circle (0.0, 0.0, 2.0, White);
   Metrics (Moon, Speed)    := -0.03;
   Metrics (Moon, Distance) := 10.0;
   Metrics (Moon, Angle)    := 0.0;

   Stars (Satellite)             := New_Circle (0.0, 0.0, 0.8, Red);
   Metrics (Satellite, Speed)    := 0.07;
   Metrics (Satellite, Distance) := 3.2;
   Metrics (Satellite, Angle)    := 0.0;

   loop
      delay 0.01;

      for J in Earth .. Satellite loop
         Set_X
           (Stars (J),
            Get_X (Stars (Star'Pred (J))) +
            Cos (Metrics (J, Angle)) * Metrics (J, Distance));
         Set_Y
           (Stars (J),
            Get_Y (Stars (Star'Pred (J))) +
            Sin (Metrics (J, Angle)) * Metrics (J, Distance));
      end loop;

      for J in Star'Range loop
         Metrics (J, Angle) := Metrics (J, Angle) + Metrics (J, Speed);
      end loop;
   end loop;
end Main;
