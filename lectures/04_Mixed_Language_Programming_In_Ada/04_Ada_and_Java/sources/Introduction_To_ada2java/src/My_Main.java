import api.API.R;
import api.API.API_Package;
import api.Standard.AdaString;

public class My_Main {

    public static void main (String [] argv) {
        R v = new R (); 
        v.F1 (10); 
        v.F2 (15);

        API_Package.Print (new AdaString ("Hello"), v);
    }
}
