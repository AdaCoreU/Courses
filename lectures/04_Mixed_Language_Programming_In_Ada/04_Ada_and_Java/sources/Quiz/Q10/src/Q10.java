import quiz.Standard.*;
import quiz.Q10.*;

public class Q10 {
   
   public static void main (String [] argv) {
      My_Printer cb = new My_Printer();  
      Q10_Package.Call_Back(cb, new AdaString("Hello World"));
   }
}
