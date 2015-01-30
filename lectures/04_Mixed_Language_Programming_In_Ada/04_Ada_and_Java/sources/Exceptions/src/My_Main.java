import except.Except.*;
import except.Standard.*;

public class My_Main {

   public static void main (String [] argv) {
      try { 
         Except_Package.Throw_An_Exception();
      } catch (An_Exception e) { 
         System.out.println ("Exception thrown from Ada");
      }
   }
}