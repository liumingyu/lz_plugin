
import 'lz_plugin_platform_interface.dart';

class LzPlugin {
  Future<String?> getPlatformVersion() {
    return LzPluginPlatform.instance.getPlatformVersion();
  }
}
