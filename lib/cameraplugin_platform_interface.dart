import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'cameraplugin_method_channel.dart';

abstract class CamerapluginPlatform extends PlatformInterface {
  /// Constructs a CamerapluginPlatform.
  CamerapluginPlatform() : super(token: _token);

  static final Object _token = Object();

  static CamerapluginPlatform _instance = MethodChannelCameraplugin();

  /// The default instance of [CamerapluginPlatform] to use.
  ///
  /// Defaults to [MethodChannelCameraplugin].
  static CamerapluginPlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [CamerapluginPlatform] when
  /// they register themselves.
  static set instance(CamerapluginPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}
