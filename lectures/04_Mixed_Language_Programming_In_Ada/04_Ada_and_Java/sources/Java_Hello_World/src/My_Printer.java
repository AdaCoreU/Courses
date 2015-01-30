import jprinter.JPrinter.*;
import jprinter.Standard.*;

public class My_Printer extends Print_CB {
   public void Print_CB_Body (jprinter.Standard.AdaString Str) {
      System.out.println(Str.toString());
   }
}