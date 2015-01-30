import quiz.Standard.*;

public class Q1 {

   public static void main (String [] argv) {
      /* Failing Code
      java.lang.String MyString = new AdaString("Hello World");
      */
      
      /* Working Code */
      java.lang.String MyString = (new AdaString("Hello World")).toString();
      System.out.println(MyString);
   }
}