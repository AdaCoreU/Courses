import adastring.String_Types.String_Types_Package;
import adastring.Standard.AdaString;

public class My_Main {

	public static void main (String [] argv) {
		System.out.println(String_Types_Package.Get_A_Fixed_String());
		
		java.lang.String MyString = (new AdaString("Hello World")).toString();
		/* MyString is "Hello World" */

		AdaString AnotherString = new AdaString("AdaCore");
		AnotherString.Set_Element_At(AnotherString.Last(),'G');
		System.out.println(AnotherString.toString());
    }
}