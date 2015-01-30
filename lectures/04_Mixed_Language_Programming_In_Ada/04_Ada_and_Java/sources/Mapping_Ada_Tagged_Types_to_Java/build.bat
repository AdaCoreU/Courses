pushd src
ada2java tagged_types.ads -b adatagged -o ada2java\ada -c ada2java\java -L adatagged
gprclean -Pada2java\ada\adatagged.gpr
gprbuild -p -Pada2java\ada\adatagged.gpr
set CLASSPATH=%CD%;%CD%\ada2java\java;%CD%\..\..\GNATGPL2014\lib\ajis.jar;%CLASSPATH%
set PATH=%CD%\ada2java\ada\lib;%PATH%
javac My_Main.java
java My_Main
popd