pushd src\gen
g++ -c -fdump-ada-spec ..\cpplib.cpp -o ..\..\obj\cpplib.obj
popd
gprbuild -P proj.gpr
