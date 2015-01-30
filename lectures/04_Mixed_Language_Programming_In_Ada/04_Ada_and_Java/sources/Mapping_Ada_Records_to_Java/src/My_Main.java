import adarecord.Record_Types.*;

public class My_Main {

   public static void main (String [] argv) {

      A_Nested_Record_Type nestedRecord = new A_Nested_Record_Type();
  
      nestedRecord.Integer_Field(45);

      A_Record_Type aRecord = new A_Record_Type();
  
      aRecord.Integer_Field(23);  
      
      System.out.println(Record_Types_Package.As_String(nestedRecord).toString());
      System.out.println(aRecord.Integer_Field());
   
   }
}