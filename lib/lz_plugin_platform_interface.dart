import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'lz_plugin_method_channel.dart';

abstract class LzPluginPlatform extends PlatformInterface {
  /// Constructs a LzPluginPlatform.
  LzPluginPlatform() : super(token: _token);

  static final Object _token = Object();

  static LzPluginPlatform _instance = MethodChannelLzPlugin();

  /// The default instance of [LzPluginPlatform] to use.
  ///
  /// Defaults to [MethodChannelLzPlugin].
  static LzPluginPlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [LzPluginPlatform] when
  /// they register themselves.
  static set instance(LzPluginPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}
