set compiler_path="C:\Program Files (x86)\Microsoft Visual Studio\2022\BuildTools\VC\Auxiliary\Build\vcvars64.bat"
vulkan
call %compiler_path%

::sets output file of .obj object created by compiler
set file_object_path="bin/obj/"

set includes=/I "/src" /I "%VULKAN_SDK%/Include" 
echo "PATH: " %LIBPATH%
set links=/LIBPATH:%VULKAN_SDK%/Lib vulkan-1.lib /out:"bin/main.exe"
set define=/D DEBUG

echo "Building main..."
::arguments come from microsoft webpage https://docs.microsoft.com/en-us/cpp/build/reference/compiler-command-line-syntax?view=msvc-170
::this is the compiler call. call %compiler-path% above lets us call this
cl /EHsc /Fo"%file_object_path%" %includes% %defines% src/main.cpp /link %links% 