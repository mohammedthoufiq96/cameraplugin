
import 'cameraplugin_platform_interface.dart';

class Cameraplugin {
  Future<String?> getPlatformVersion() {
    return CamerapluginPlatform.instance.getPlatformVersion();
  }
}
