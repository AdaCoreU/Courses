pushd src
ada2java record_types.ads -b adarecord -o ada2java\ada -c ada2java\java -L adarecord
gprclean -Pada2java\ada\adarecord.gpr
gprbuild -p -Pada2java\ada\adarecord.gpr
set CLASSPATH=%CD%;%CD%\ada2java\java;%CD%\..\..\GNATGPL2014\lib\ajis.jar;%CLASSPATH%
set PATH=%CD%\ada2java\ada\lib;%PATH%
javac My_Main.java
java My_Main
popd