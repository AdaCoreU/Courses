pushd src
ada2java scalar_types.ads -b adascalar -o ada2java\ada -c ada2java\java -L adascalar
gprclean -Pada2java\ada\adascalar.gpr
gprbuild -p -Pada2java\ada\adascalar.gpr
set CLASSPATH=%CD%;%CD%\ada2java\java;%CD%\..\..\GNATGPL2014\lib\ajis.jar;%CLASSPATH%
set PATH=%CD%\ada2java\ada\lib;%PATH%
popd