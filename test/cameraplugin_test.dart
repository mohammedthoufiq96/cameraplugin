import 'package:flutter_test/flutter_test.dart';
import 'package:cameraplugin/cameraplugin.dart';
import 'package:cameraplugin/cameraplugin_platform_interface.dart';
import 'package:cameraplugin/cameraplugin_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockCamerapluginPlatform
    with MockPlatformInterfaceMixin
    implements CamerapluginPlatform {

  @override
  Future<String?> getPlatformVersion() => Future.value('42');
}

void main() {
  final CamerapluginPlatform initialPlatform = CamerapluginPlatform.instance;

  test('$MethodChannelCameraplugin is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelCameraplugin>());
  });

  test('getPlatformVersion', () async {
    Cameraplugin camerapluginPlugin = Cameraplugin();
    MockCamerapluginPlatform fakePlatform = MockCamerapluginPlatform();
    CamerapluginPlatform.instance = fakePlatform;

    expect(await camerapluginPlugin.getPlatformVersion(), '42');
  });
}
