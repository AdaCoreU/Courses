import quiz.Standard.*;
import quiz.Q2.*;

public class Q2 {

   public static void main (String [] argv) {
      try { 
         Q2_Package.Calc_Sum(10,20);
      } catch (Constraint_Error e) { 
         System.out.println ("Exception thrown from Ada");
      }
   }
}