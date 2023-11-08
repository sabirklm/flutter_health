import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_health/flutter_health.dart';
import 'package:flutter_health/flutter_health_platform_interface.dart';
import 'package:flutter_health/flutter_health_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockFlutterHealthPlatform
    with MockPlatformInterfaceMixin
    implements FlutterHealthPlatform {

  @override
  Future<String?> getPlatformVersion() => Future.value('42');
}

void main() {
  final FlutterHealthPlatform initialPlatform = FlutterHealthPlatform.instance;

  test('$MethodChannelFlutterHealth is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelFlutterHealth>());
  });

  test('getPlatformVersion', () async {
    FlutterHealth flutterHealthPlugin = FlutterHealth();
    MockFlutterHealthPlatform fakePlatform = MockFlutterHealthPlatform();
    FlutterHealthPlatform.instance = fakePlatform;

    expect(await flutterHealthPlugin.getPlatformVersion(), '42');
  });
}
