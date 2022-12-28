import '../controller/setting_preference_controller.dart';
import 'package:get/get.dart';

class SettingPreferenceBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SettingPreferenceController());
  }
}
