import 'package:nnaji_christian_s_application7/core/app_export.dart';
import 'package:nnaji_christian_s_application7/presentation/setting_edit_profile_screen/models/setting_edit_profile_model.dart';
import 'package:flutter/material.dart';

class SettingEditProfileController extends GetxController {
  TextEditingController group1063Controller = TextEditingController();

  TextEditingController languageController = TextEditingController();

  TextEditingController languageOneController = TextEditingController();

  TextEditingController emailOneController = TextEditingController();

  TextEditingController passwordOneController = TextEditingController();

  TextEditingController group572Controller = TextEditingController();

  TextEditingController group572OneController = TextEditingController();

  TextEditingController group572TwoController = TextEditingController();

  TextEditingController zipcodeController = TextEditingController();

  TextEditingController group572ThreeController = TextEditingController();

  TextEditingController group420Controller = TextEditingController();

  Rx<SettingEditProfileModel> settingEditProfileModelObj =
      SettingEditProfileModel().obs;

  SelectionPopupModel? selectedDropDownValue;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
    group1063Controller.dispose();
    languageController.dispose();
    languageOneController.dispose();
    emailOneController.dispose();
    passwordOneController.dispose();
    group572Controller.dispose();
    group572OneController.dispose();
    group572TwoController.dispose();
    zipcodeController.dispose();
    group572ThreeController.dispose();
    group420Controller.dispose();
  }

  onSelected(dynamic value) {
    selectedDropDownValue = value as SelectionPopupModel;
    settingEditProfileModelObj.value.dropdownItemList.forEach((element) {
      element.isSelected = false;
      if (element.id == value.id) {
        element.isSelected = true;
      }
    });
    settingEditProfileModelObj.value.dropdownItemList.refresh();
  }
}
