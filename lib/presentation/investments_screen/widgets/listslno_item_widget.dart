import '../controller/investments_controller.dart';
import '../models/listslno_item_model.dart';
import 'package:flutter/material.dart';
import 'package:nnaji_christian_s_application7/core/app_export.dart';

// ignore: must_be_immutable
class ListslnoItemWidget extends StatelessWidget {
  ListslnoItemWidget(this.listslnoItemModelObj);

  ListslnoItemModel listslnoItemModelObj;

  var controller = Get.find<InvestmentsController>();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: getPadding(
        top: 8.464998,
        bottom: 8.464998,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "lbl_sl_no".tr,
            overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.left,
            style: AppStyle.txtInterMedium12Bluegray400,
          ),
          Padding(
            padding: getPadding(
              left: 19,
            ),
            child: Text(
              "lbl_name".tr,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.left,
              style: AppStyle.txtInterMedium12Bluegray400,
            ),
          ),
          Padding(
            padding: getPadding(
              left: 59,
            ),
            child: Text(
              "lbl_price".tr,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.left,
              style: AppStyle.txtInterMedium12Bluegray400,
            ),
          ),
          Spacer(),
          Text(
            "lbl_return".tr,
            overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.left,
            style: AppStyle.txtInterMedium12Bluegray400,
          ),
        ],
      ),
    );
  }
}
