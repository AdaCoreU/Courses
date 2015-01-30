pushd src
ada2java name_clashes.ads -b nameclash -o ada2java\ada -c ada2java\java -L nameclash
gprclean -Pada2java\ada\nameclash.gpr
gprbuild -p -Pada2java\ada\nameclash.gpr
set CLASSPATH=%CD%;%CD%\ada2java\java;%CD%\..\..\GNATGPL2014\lib\ajis.jar;%CLASSPATH%
set PATH=%CD%\ada2java\ada\lib;%PATH%
javac My_Main.java
java My_Main
popd