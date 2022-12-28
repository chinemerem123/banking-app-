import 'package:nnaji_christian_s_application7/core/app_export.dart';
import 'package:nnaji_christian_s_application7/presentation/credit_cards_screen/models/credit_cards_model.dart';
import 'package:flutter/material.dart';

class CreditCardsController extends GetxController {
  TextEditingController group1714Controller = TextEditingController();

  TextEditingController group1715Controller = TextEditingController();

  TextEditingController group572Controller = TextEditingController();

  TextEditingController group572OneController = TextEditingController();

  TextEditingController group572TwoController = TextEditingController();

  TextEditingController dateController = TextEditingController();

  TextEditingController group420Controller = TextEditingController();

  Rx<CreditCardsModel> creditCardsModelObj = CreditCardsModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
    group1714Controller.dispose();
    group1715Controller.dispose();
    group572Controller.dispose();
    group572OneController.dispose();
    group572TwoController.dispose();
    dateController.dispose();
    group420Controller.dispose();
  }
}
