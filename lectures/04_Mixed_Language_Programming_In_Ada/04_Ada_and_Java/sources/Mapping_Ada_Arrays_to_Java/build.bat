pushd src
ada2java ada_array.ads -b adaarray -o ada2java\ada -c ada2java\java -L adaarray
gprclean -Pada2java\ada\adaarray.gpr
gprbuild -p -Pada2java\ada\adaarray.gpr
set CLASSPATH=%CD%;%CD%\ada2java\java;%CD%\..\..\GNATGPL2014\lib\ajis.jar;%CLASSPATH%
set PATH=%CD%\ada2java\ada\lib;%PATH%
rem javac My_Main.java
rem java My_Main
popd