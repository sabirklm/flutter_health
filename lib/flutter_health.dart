
import 'flutter_health_platform_interface.dart';

class FlutterHealth {
  Future<String?> getPlatformVersion() {
    return FlutterHealthPlatform.instance.getPlatformVersion();
  }
}
