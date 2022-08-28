
compilerFlags=-g -Wvarargs -Wall -Werror
includeFlags=-Idependencies\Include -I$(VULKAN_SDK)/Include
linkerFlags=-Ldependencies\libs -l:libglfw3.a -L$(VULKAN_SDK)\Lib -lvulkan-1

main:
	echo $(PWD)
	g++ main.cpp $(CFLAGS) -D_DEBUG $(includeFlags) $(linkerFlags) -o bin/main.exe


