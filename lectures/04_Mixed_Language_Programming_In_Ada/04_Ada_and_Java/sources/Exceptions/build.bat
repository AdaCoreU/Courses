pushd src
ada2java except.ads -b except -o ada2java\ada -c ada2java\java -L except
gprclean -Pada2java\ada\except.gpr
gprbuild -p -Pada2java\ada\except.gpr
set CLASSPATH=%CD%;%CD%\ada2java\java;%CD%\..\..\GNATGPL2014\lib\ajis.jar;%CLASSPATH%
set PATH=%CD%\ada2java\ada\lib;%PATH%
javac My_Main.java
java My_Main
popd