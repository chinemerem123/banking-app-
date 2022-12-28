import '../controller/setting_edit_profile_controller.dart';
import 'package:get/get.dart';

class SettingEditProfileBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SettingEditProfileController());
  }
}
