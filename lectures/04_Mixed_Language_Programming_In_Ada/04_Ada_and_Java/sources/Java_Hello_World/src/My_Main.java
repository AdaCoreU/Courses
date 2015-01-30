import jprinter.JPrinter.*;
import jprinter.Standard.*;

public class My_Main {
   public static void main (String [] argv) {
      My_Printer cb = new My_Printer();  
      JPrinter_Package.Call_Back(cb, new AdaString("Hello World"));
   }
}