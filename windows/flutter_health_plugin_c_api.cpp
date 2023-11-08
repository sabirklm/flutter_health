#include "include/flutter_health/flutter_health_plugin_c_api.h"

#include <flutter/plugin_registrar_windows.h>

#include "flutter_health_plugin.h"

void FlutterHealthPluginCApiRegisterWithRegistrar(
    FlutterDesktopPluginRegistrarRef registrar) {
  flutter_health::FlutterHealthPlugin::RegisterWithRegistrar(
      flutter::PluginRegistrarManager::GetInstance()
          ->GetRegistrar<flutter::PluginRegistrarWindows>(registrar));
}
