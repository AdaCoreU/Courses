pushd src
ada2java printer.ads -b printer -o ada2java\ada -c ada2java\java -L printer
gprclean -Pada2java\ada\printer.gpr
gprbuild -p -Pada2java\ada\printer.gpr
set CLASSPATH=%CD%;%CD%\ada2java\java;%CD%\..\..\GNATGPL2014\lib\ajis.jar;%CLASSPATH%
set PATH=%CD%\ada2java\ada\lib;%PATH%
javac My_Main.java
java My_Main
popd