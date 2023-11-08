import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'flutter_health_method_channel.dart';

abstract class FlutterHealthPlatform extends PlatformInterface {
  /// Constructs a FlutterHealthPlatform.
  FlutterHealthPlatform() : super(token: _token);

  static final Object _token = Object();

  static FlutterHealthPlatform _instance = MethodChannelFlutterHealth();

  /// The default instance of [FlutterHealthPlatform] to use.
  ///
  /// Defaults to [MethodChannelFlutterHealth].
  static FlutterHealthPlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [FlutterHealthPlatform] when
  /// they register themselves.
  static set instance(FlutterHealthPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}
