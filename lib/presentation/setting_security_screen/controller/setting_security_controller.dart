import 'package:nnaji_christian_s_application7/core/app_export.dart';
import 'package:nnaji_christian_s_application7/presentation/setting_security_screen/models/setting_security_model.dart';
import 'package:flutter/material.dart';

class SettingSecurityController extends GetxController {
  TextEditingController group1069Controller = TextEditingController();

  TextEditingController group572Controller = TextEditingController();

  TextEditingController group572OneController = TextEditingController();

  TextEditingController group420Controller = TextEditingController();

  Rx<SettingSecurityModel> settingSecurityModelObj = SettingSecurityModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
    group1069Controller.dispose();
    group572Controller.dispose();
    group572OneController.dispose();
    group420Controller.dispose();
  }
}
