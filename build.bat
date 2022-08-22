set compiler_path="C:\Program Files (x86)\Microsoft Visual Studio\2022\BuildTools\VC\Auxiliary\Build\vcvars64.bat"
call %compiler_path%

set includes=/I /src /I %VULKAN_SDK%/Include /I "libs/glfw-3.3.8.bin.WIN64/include"
set define=/D DEBUG
set links=/LIBPATH:libs/glfw-3.3.8.bin.WIN64/lib-vc2022
::set links=/LIBPATH:%VULKAN_SDK%\Lib vulkan-1.lib /DEFAULTLIB:L:\devCode\Vulkan_Experiments\libs\glfw-3.3.8.bin.WIN64\lib-vc2022 glfw3.lib /out:"bin/main.exe" 

echo "Building main..."
::arguments come from microsoft webpage https://docs.microsoft.com/en-us/cpp/build/reference/compiler-command-line-syntax?view=msvc-170
::this is the compiler call. call %compiler-path% above lets us call this, as it makes this script run from the Developer Command Prompt for VSCode 2022
cl /EHsc /Fo"bin/obj/" %includes% %defines% src/main.cpp /link %links%