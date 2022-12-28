import '../controller/accounts_controller.dart';
import '../models/listalarm_item_model.dart';
import 'package:flutter/material.dart';
import 'package:nnaji_christian_s_application7/core/app_export.dart';
import 'package:nnaji_christian_s_application7/widgets/custom_icon_button.dart';

// ignore: must_be_immutable
class ListalarmItemWidget extends StatelessWidget {
  ListalarmItemWidget(this.listalarmItemModelObj);

  ListalarmItemModel listalarmItemModelObj;

  var controller = Get.find<AccountsController>();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: getPadding(
        top: 6.0,
        bottom: 6.0,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomIconButton(
            height: 45,
            width: 45,
            child: CustomImageView(
              svgPath: ImageConstant.imgAlarm,
            ),
          ),
          Padding(
            padding: getPadding(
              left: 12,
              top: 6,
              bottom: 3,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  "msg_spotify_subscri".tr,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: AppStyle.txtInterMedium14,
                ),
                Padding(
                  padding: getPadding(
                    top: 2,
                  ),
                  child: Text(
                    "lbl_25_jan_2021".tr,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtInterRegular12,
                  ),
                ),
              ],
            ),
          ),
          Spacer(),
          Padding(
            padding: getPadding(
              top: 15,
              bottom: 14,
            ),
            child: Text(
              "lbl_150".tr,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.left,
              style: AppStyle.txtInterMedium12Red700,
            ),
          ),
        ],
      ),
    );
  }
}
