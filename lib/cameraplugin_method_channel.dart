import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'cameraplugin_platform_interface.dart';

/// An implementation of [CamerapluginPlatform] that uses method channels.
class MethodChannelCameraplugin extends CamerapluginPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('cameraplugin');

  @override
  Future<String?> getPlatformVersion() async {
    final version = await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }
}
