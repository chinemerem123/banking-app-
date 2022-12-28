import 'package:nnaji_christian_s_application7/core/app_export.dart';
import 'package:nnaji_christian_s_application7/presentation/transactions_screen/models/transactions_model.dart';
import 'package:flutter/material.dart';

class TransactionsController extends GetxController {
  TextEditingController group1719Controller = TextEditingController();

  TextEditingController group1720Controller = TextEditingController();

  TextEditingController group1035Controller = TextEditingController();

  TextEditingController group420Controller = TextEditingController();

  Rx<TransactionsModel> transactionsModelObj = TransactionsModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
    group1719Controller.dispose();
    group1720Controller.dispose();
    group1035Controller.dispose();
    group420Controller.dispose();
  }
}
