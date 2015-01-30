import quiz.Q3.*;

public class Q3 {

   public static void main (String [] argv) {
      Q3_Type The_Strings = new Q3_Type();
      Q3_Package.Set_Strings(The_Strings);
      
      Nested_Array element = The_Strings.Get_Element_At(The_Strings.Last());
      
      for (int i=1;i < element.Length(); i++) {
        System.out.print(element.Get_Element_At(i));
      }
      
   }
}