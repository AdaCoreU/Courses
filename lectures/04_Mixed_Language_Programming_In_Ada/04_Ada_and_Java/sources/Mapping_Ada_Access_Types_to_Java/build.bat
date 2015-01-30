pushd src
ada2java access_types.ads -b adaaccess -o ada2java\ada -c ada2java\java -L adaaccess
gprclean -Pada2java\ada\adaaccess.gpr
gprbuild -p -Pada2java\ada\adaaccess.gpr
set CLASSPATH=%CD%;%CD%\ada2java\java;%CD%\..\..\GNATGPL2014\lib\ajis.jar;%CLASSPATH%
set PATH=%CD%\ada2java\ada\lib;%PATH%
javac My_Main.java
java My_Main
popd