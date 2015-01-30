import globvar.GlobVar.*;

public class My_Main {

   public static void main (String [] argv) {
      System.out.println(GlobVar_Package.My_Global());
      GlobVar_Package.My_Global(60);
      System.out.println(GlobVar_Package.My_Global());
      System.out.println(GlobVar_Package.My_Constant());
   }
}