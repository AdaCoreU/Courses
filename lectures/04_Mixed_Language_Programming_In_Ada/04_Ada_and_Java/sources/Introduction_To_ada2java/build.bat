pushd src
ada2java api.ads -b api -o ada2java\ada -c ada2java\java -L api
gprclean -Pada2java\ada\api.gpr
gprbuild -p -Pada2java\ada\api.gpr
set CLASSPATH=%CD%;%CD%\ada2java\java;%CD%\..\..\GNATGPL2014\lib\ajis.jar;%CLASSPATH%
set PATH=%CD%\ada2java\ada\lib;%PATH%
javac My_Main.java
java My_Main
popd