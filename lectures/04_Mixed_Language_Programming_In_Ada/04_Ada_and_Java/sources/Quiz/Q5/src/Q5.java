import quiz.Standard.*;
import quiz.Q5.*;

public class Q5 {
   public static void main (String [] argv) {
      
      System.out.print(
         Q5_Package.OP_PLUS(10,Q5_Package.OP_MINUS(50,10)) == 50
      );
      
      /*
      System.out.print(
         Q5_Package.OP_EQUAL(Q5_Package.OP_PLUS(10,Q5_Package.OP_MINUS(50,10)),50)
      );
      */
   }
}