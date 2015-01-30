import adatagged.Tagged_Types.*;
import adatagged.Standard.*;

public class My_Main {

   static class A_Java_Child extends A_Tagged_Type {
      public void Print_Me (AdaString Me) { 
        System.out.println ("FROM A JAVA CHILD: " + Me);
      }
   }
   
   public static void main (String [] argv) {
      A_Tagged_Type v1 = new A_Tagged_Type ();
      An_Ada_Child v2 = new An_Ada_Child ();
      A_Tagged_Type v3 = new A_Java_Child ();
      Tagged_Types_Package.Call_Print_Me (new AdaString ("V1"), v1);
      Tagged_Types_Package.Call_Print_Me (new AdaString ("V2"), v2);
      Tagged_Types_Package.Call_Print_Me (new AdaString ("V3"), v3);
   }

}