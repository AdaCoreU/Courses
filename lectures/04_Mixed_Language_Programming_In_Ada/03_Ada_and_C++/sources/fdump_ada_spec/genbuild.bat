pushd src
if exist gen (
   rem gen exists
) else (
   mkdir gen
)
cd gen
g++ -c -fdump-ada-spec ..\cpplib.cpp -o ..\..\obj\cpplib.obj
popd
gprbuild -p -P proj.gpr
