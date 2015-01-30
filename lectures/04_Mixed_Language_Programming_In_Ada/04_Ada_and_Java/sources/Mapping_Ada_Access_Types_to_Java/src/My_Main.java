import adaaccess.Access_Types.*;

public class My_Main {

   public static void main (String [] argv) {
      Target_Length tgtLngth = new Target_Length();
  
      tgtLngth.Value(20);
   
      Access_Types_Package.Use_Access_Type(tgtLngth);
   }

}