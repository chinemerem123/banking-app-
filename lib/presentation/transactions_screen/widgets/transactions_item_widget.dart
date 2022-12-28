import '../controller/transactions_controller.dart';
import '../models/transactions_item_model.dart';
import 'package:flutter/material.dart';
import 'package:nnaji_christian_s_application7/core/app_export.dart';

// ignore: must_be_immutable
class TransactionsItemWidget extends StatelessWidget {
  TransactionsItemWidget(this.transactionsItemModelObj);

  TransactionsItemModel transactionsItemModelObj;

  var controller = Get.find<TransactionsController>();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: getPadding(
        top: 9.93,
        bottom: 9.93,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Card(
            clipBehavior: Clip.antiAlias,
            elevation: 0,
            margin: getMargin(
              bottom: 1,
            ),
            shape: RoundedRectangleBorder(
              side: BorderSide(
                color: ColorConstant.red700,
                width: getHorizontalSize(
                  2.00,
                ),
              ),
              borderRadius: BorderRadiusStyle.roundedBorder17,
            ),
            child: Container(
              height: getSize(
                35.00,
              ),
              width: getSize(
                35.00,
              ),
              padding: getPadding(
                left: 16,
                top: 10,
                right: 16,
                bottom: 10,
              ),
              decoration: AppDecoration.outlineRed700.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder17,
              ),
              child: Stack(
                children: [
                  CustomImageView(
                    svgPath: ImageConstant.imgArrow1,
                    height: getVerticalSize(
                      13.00,
                    ),
                    width: getHorizontalSize(
                      1.00,
                    ),
                    alignment: Alignment.bottomRight,
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: getPadding(
              left: 12,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  "msg_spotify_subscri".tr,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: AppStyle.txtInterMedium13Bluegray900,
                ),
                Padding(
                  padding: getPadding(
                    top: 4,
                  ),
                  child: Text(
                    "msg_28_jan_12_30_a".tr,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtInterRegular12,
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: getPadding(
              left: 60,
              top: 9,
              bottom: 10,
            ),
            child: Text(
              "lbl_2_500".tr,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.left,
              style: AppStyle.txtInterMedium13Red700,
            ),
          ),
        ],
      ),
    );
  }
}
