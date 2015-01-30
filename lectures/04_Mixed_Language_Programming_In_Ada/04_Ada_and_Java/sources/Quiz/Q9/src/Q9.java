import quiz.Standard.*;
import quiz.Q9.*;

public class Q9 {

   static class A_Java_Child extends Child_Type
   {
      A_Java_Child() {
         A_Field(30);
      }
   
      public void Print_Me (AdaString Me) { 
        System.out.println(Me + ":" + A_Field() + ":" + Another_Field());
      }
   }

   public static void main (String [] argv) {
      A_Java_Child v2 = new A_Java_Child();
      v2.Print_Me(new AdaString ("Hello World"));
   }
}
