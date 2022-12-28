import '../controller/setting_security_controller.dart';
import 'package:get/get.dart';

class SettingSecurityBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SettingSecurityController());
  }
}
