import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'flutter_health_platform_interface.dart';

/// An implementation of [FlutterHealthPlatform] that uses method channels.
class MethodChannelFlutterHealth extends FlutterHealthPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('flutter_health');

  @override
  Future<String?> getPlatformVersion() async {
    final version = await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }
}
