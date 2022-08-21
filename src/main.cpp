#include <vulkan/vulkan.h>
#include <iostream>

using namespace std;

int main()
{
    VkApplicationInfo appInfo = {};
    appInfo.sType = VK_STRUCTURE_TYPE_APPLICATION_INFO;
    appInfo.pApplicationName = "PONG";
    appInfo.pEngineName = "PongEngine";

    VkInstanceCreateInfo instanceInfo = {};
    instanceInfo.sType = VK_STRUCTURE_TYPE_INSTANCE_CREATE_INFO;
    instanceInfo.pApplicationInfo = &appInfo;

    VkInstance instance;

    VkResult result = vkCreateInstance(&instanceInfo, 0, &instance);
    if(result == VK_SUCCESS)
    {
        std::cout << "Success!" << std::endl;
    }

    return 0;
}