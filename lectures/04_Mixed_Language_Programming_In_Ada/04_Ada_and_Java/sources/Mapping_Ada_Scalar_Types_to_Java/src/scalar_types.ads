package Scalar_Types is

    type ThirtyTwo_Bits_T is range 1..10;
    for ThirtyTwo_Bits_T'Size use 32;

    ThirtyTwo_Bits : ThirtyTwo_Bits_T := 5;

    type SixtyFourBits_T is range 1..10;
    for SixtyFourBits_T'Size use 64;

    SixtyFourBits : SixtyFourBits_T := 6;

    A_Boolean : Boolean := True;

    A_Character : Character := 'M';

    type An_Enumeration_T is (TTY,VLU,HMC);

    An_Enumeration : An_Enumeration_T := VLU;

    type A_Fixed_Point_T is delta 10.0**(-9) range -1.0 .. 1.0;

    A_Fixed_Point : A_Fixed_Point_T := 0.003;

    A_Float : Float := 3.14;

end Scalar_Types;