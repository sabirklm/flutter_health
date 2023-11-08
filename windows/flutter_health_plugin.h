#ifndef FLUTTER_PLUGIN_FLUTTER_HEALTH_PLUGIN_H_
#define FLUTTER_PLUGIN_FLUTTER_HEALTH_PLUGIN_H_

#include <flutter/method_channel.h>
#include <flutter/plugin_registrar_windows.h>

#include <memory>

namespace flutter_health {

class FlutterHealthPlugin : public flutter::Plugin {
 public:
  static void RegisterWithRegistrar(flutter::PluginRegistrarWindows *registrar);

  FlutterHealthPlugin();

  virtual ~FlutterHealthPlugin();

  // Disallow copy and assign.
  FlutterHealthPlugin(const FlutterHealthPlugin&) = delete;
  FlutterHealthPlugin& operator=(const FlutterHealthPlugin&) = delete;

 private:
  // Called when a method is called on this plugin's channel from Dart.
  void HandleMethodCall(
      const flutter::MethodCall<flutter::EncodableValue> &method_call,
      std::unique_ptr<flutter::MethodResult<flutter::EncodableValue>> result);
};

}  // namespace flutter_health

#endif  // FLUTTER_PLUGIN_FLUTTER_HEALTH_PLUGIN_H_
