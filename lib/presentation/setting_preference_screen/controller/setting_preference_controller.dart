import 'package:nnaji_christian_s_application7/core/app_export.dart';
import 'package:nnaji_christian_s_application7/presentation/setting_preference_screen/models/setting_preference_model.dart';
import 'package:flutter/material.dart';

class SettingPreferenceController extends GetxController {
  TextEditingController group1066Controller = TextEditingController();

  TextEditingController priceController = TextEditingController();

  TextEditingController timeZoneOneController = TextEditingController();

  TextEditingController group420Controller = TextEditingController();

  Rx<SettingPreferenceModel> settingPreferenceModelObj =
      SettingPreferenceModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
    group1066Controller.dispose();
    priceController.dispose();
    timeZoneOneController.dispose();
    group420Controller.dispose();
  }
}
