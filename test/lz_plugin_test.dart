import 'package:flutter_test/flutter_test.dart';
import 'package:lz_plugin/lz_plugin.dart';
import 'package:lz_plugin/lz_plugin_platform_interface.dart';
import 'package:lz_plugin/lz_plugin_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockLzPluginPlatform
    with MockPlatformInterfaceMixin
    implements LzPluginPlatform {

  @override
  Future<String?> getPlatformVersion() => Future.value('42');
}

void main() {
  final LzPluginPlatform initialPlatform = LzPluginPlatform.instance;

  test('$MethodChannelLzPlugin is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelLzPlugin>());
  });

  test('getPlatformVersion', () async {
    LzPlugin lzPlugin = LzPlugin();
    MockLzPluginPlatform fakePlatform = MockLzPluginPlatform();
    LzPluginPlatform.instance = fakePlatform;

    expect(await lzPlugin.getPlatformVersion(), '42');
  });
}
