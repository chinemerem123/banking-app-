import '../controller/home_controller.dart';
import '../models/home_item_model.dart';
import 'package:flutter/material.dart';
import 'package:nnaji_christian_s_application7/core/app_export.dart';
import 'package:nnaji_christian_s_application7/widgets/custom_icon_button.dart';

// ignore: must_be_immutable
class HomeItemWidget extends StatelessWidget {
  HomeItemWidget(this.homeItemModelObj);

  HomeItemModel homeItemModelObj;

  var controller = Get.find<HomeController>();

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
            height: 50,
            width: 50,
            shape: IconButtonShape.CircleBorder25,
            child: CustomImageView(
              svgPath: ImageConstant.imgVideocamera,
            ),
          ),
          Padding(
            padding: getPadding(
              left: 15,
              top: 8,
              bottom: 5,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  "lbl_deposit_from_my".tr,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: AppStyle.txtInterMedium14,
                ),
                Padding(
                  padding: getPadding(
                    top: 3,
                  ),
                  child: Text(
                    "lbl_28_january_2021".tr,
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
              top: 18,
              bottom: 18,
            ),
            child: Text(
              "lbl_850".tr,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.left,
              style: AppStyle.txtInterMedium11,
            ),
          ),
        ],
      ),
    );
  }
}
