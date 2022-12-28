import '../transactions_screen/widgets/transactions_item_widget.dart';
import 'controller/transactions_controller.dart';
import 'models/transactions_item_model.dart';
import 'package:flutter/material.dart';
import 'package:nnaji_christian_s_application7/core/app_export.dart';
import 'package:nnaji_christian_s_application7/widgets/app_bar/appbar_circleimage.dart';
import 'package:nnaji_christian_s_application7/widgets/app_bar/appbar_image.dart';
import 'package:nnaji_christian_s_application7/widgets/app_bar/appbar_searchview.dart';
import 'package:nnaji_christian_s_application7/widgets/app_bar/appbar_title.dart';
import 'package:nnaji_christian_s_application7/widgets/app_bar/custom_app_bar.dart';
import 'package:nnaji_christian_s_application7/widgets/custom_button.dart';
import 'package:nnaji_christian_s_application7/widgets/custom_text_form_field.dart';

class TransactionsScreen extends GetWidget<TransactionsController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorConstant.gray10002,
        appBar: CustomAppBar(
          height: getVerticalSize(
            122.00,
          ),
          centerTitle: true,
          title: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: getPadding(
                  left: 24,
                  top: 7,
                  right: 24,
                ),
                child: Row(
                  children: [
                    AppbarImage(
                      height: getSize(
                        24.00,
                      ),
                      width: getSize(
                        24.00,
                      ),
                      svgPath: ImageConstant.imgMenu,
                      margin: getMargin(
                        top: 5,
                        bottom: 6,
                      ),
                    ),
                    AppbarTitle(
                      text: "lbl_transactions".tr,
                      margin: getMargin(
                        left: 76,
                        top: 3,
                        bottom: 6,
                      ),
                    ),
                    AppbarCircleimage(
                      imagePath: ImageConstant.imgPexelschristin,
                      margin: getMargin(
                        left: 66,
                      ),
                    ),
                  ],
                ),
              ),
              AppbarSearchview(
                hintText: "msg_search_for_some".tr,
                controller: controller.group420Controller,
                margin: getMargin(
                  left: 24,
                  top: 20,
                  right: 24,
                  bottom: 20,
                ),
              ),
            ],
          ),
          styleType: Style.bgFillWhiteA700,
        ),
        body: SizedBox(
          width: size.width,
          child: SingleChildScrollView(
            child: Padding(
              padding: getPadding(
                left: 24,
                top: 24,
                bottom: 5,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: getPadding(
                      right: 24,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "lbl_my_cards".tr,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtInterSemiBold16,
                        ),
                        Padding(
                          padding: getPadding(
                            bottom: 2,
                          ),
                          child: Text(
                            "lbl_add_card2".tr,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: AppStyle.txtInterSemiBold14,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    padding: getPadding(
                      top: 14,
                    ),
                    child: IntrinsicWidth(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            decoration: AppDecoration.fillIndigo600.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder17,
                            ),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Align(
                                  alignment: Alignment.center,
                                  child: Container(
                                    width: getHorizontalSize(
                                      225.00,
                                    ),
                                    margin: getMargin(
                                      left: 20,
                                      top: 17,
                                      right: 20,
                                    ),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            Text(
                                              "lbl_balance".tr,
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: AppStyle.txtInterRegular11,
                                            ),
                                            Padding(
                                              padding: getPadding(
                                                top: 2,
                                              ),
                                              child: Text(
                                                "lbl_5_756".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style:
                                                    AppStyle.txtInterRegular16,
                                              ),
                                            ),
                                          ],
                                        ),
                                        CustomImageView(
                                          imagePath: ImageConstant.imgChipcard,
                                          height: getSize(
                                            29.00,
                                          ),
                                          width: getSize(
                                            29.00,
                                          ),
                                          margin: getMargin(
                                            bottom: 6,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: getPadding(
                                    left: 20,
                                    top: 19,
                                  ),
                                  child: Row(
                                    children: [
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Text(
                                            "lbl_card_holder".tr,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle.txtInterRegular10,
                                          ),
                                          Padding(
                                            padding: getPadding(
                                              top: 4,
                                            ),
                                            child: Text(
                                              "lbl_eddy_cusuma".tr,
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: AppStyle.txtInterRegular13,
                                            ),
                                          ),
                                        ],
                                      ),
                                      Padding(
                                        padding: getPadding(
                                          left: 50,
                                        ),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            Text(
                                              "lbl_valid_thru".tr,
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: AppStyle.txtInterRegular10,
                                            ),
                                            Padding(
                                              padding: getPadding(
                                                top: 4,
                                              ),
                                              child: Text(
                                                "lbl_12_22".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style:
                                                    AppStyle.txtInterRegular13,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                CustomTextFormField(
                                  width: 265,
                                  focusNode: FocusNode(),
                                  controller: controller.group1719Controller,
                                  hintText: "msg_3778".tr,
                                  margin: getMargin(
                                    top: 14,
                                  ),
                                  variant: TextFormFieldVariant
                                      .GradientWhiteA70026WhiteA70026,
                                  shape: TextFormFieldShape.CustomBorderBL15,
                                  padding: TextFormFieldPadding.PaddingT15,
                                  fontStyle:
                                      TextFormFieldFontStyle.InterRegular15,
                                  suffix: Container(
                                    margin: getMargin(
                                      left: 30,
                                      top: 16,
                                      right: 17,
                                      bottom: 16,
                                    ),
                                    child: CustomImageView(
                                      svgPath: ImageConstant.imgContrast,
                                    ),
                                  ),
                                  suffixConstraints: BoxConstraints(
                                    minWidth: getHorizontalSize(
                                      27.00,
                                    ),
                                    minHeight: getVerticalSize(
                                      18.00,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            margin: getMargin(
                              left: 20,
                            ),
                            decoration: AppDecoration.fillIndigo500.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder17,
                            ),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Align(
                                  alignment: Alignment.center,
                                  child: Container(
                                    width: getHorizontalSize(
                                      225.00,
                                    ),
                                    margin: getMargin(
                                      left: 20,
                                      top: 17,
                                      right: 20,
                                    ),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            Text(
                                              "lbl_balance".tr,
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: AppStyle.txtInterRegular11,
                                            ),
                                            Padding(
                                              padding: getPadding(
                                                top: 2,
                                              ),
                                              child: Text(
                                                "lbl_5_756".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style:
                                                    AppStyle.txtInterRegular16,
                                              ),
                                            ),
                                          ],
                                        ),
                                        CustomImageView(
                                          imagePath: ImageConstant.imgChipcard,
                                          height: getSize(
                                            29.00,
                                          ),
                                          width: getSize(
                                            29.00,
                                          ),
                                          margin: getMargin(
                                            bottom: 6,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: getPadding(
                                    left: 20,
                                    top: 18,
                                  ),
                                  child: Row(
                                    children: [
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Text(
                                            "lbl_card_holder".tr,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle.txtInterRegular10,
                                          ),
                                          Padding(
                                            padding: getPadding(
                                              top: 5,
                                            ),
                                            child: Text(
                                              "lbl_eddy_cusuma".tr,
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: AppStyle.txtInterRegular13,
                                            ),
                                          ),
                                        ],
                                      ),
                                      Padding(
                                        padding: getPadding(
                                          left: 50,
                                          bottom: 1,
                                        ),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            Text(
                                              "lbl_valid_thru".tr,
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: AppStyle.txtInterRegular10,
                                            ),
                                            Padding(
                                              padding: getPadding(
                                                top: 4,
                                              ),
                                              child: Text(
                                                "lbl_12_22".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style:
                                                    AppStyle.txtInterRegular13,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                CustomTextFormField(
                                  width: 265,
                                  focusNode: FocusNode(),
                                  controller: controller.group1720Controller,
                                  hintText: "msg_3778".tr,
                                  margin: getMargin(
                                    top: 12,
                                  ),
                                  variant: TextFormFieldVariant
                                      .GradientWhiteA70026WhiteA70026,
                                  shape: TextFormFieldShape.CustomBorderBL15,
                                  padding: TextFormFieldPadding.PaddingT15,
                                  fontStyle:
                                      TextFormFieldFontStyle.InterRegular15,
                                  suffix: Container(
                                    margin: getMargin(
                                      left: 30,
                                      top: 16,
                                      right: 17,
                                      bottom: 16,
                                    ),
                                    child: CustomImageView(
                                      svgPath: ImageConstant.imgContrast,
                                    ),
                                  ),
                                  suffixConstraints: BoxConstraints(
                                    minWidth: getHorizontalSize(
                                      27.00,
                                    ),
                                    minHeight: getVerticalSize(
                                      18.00,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: getPadding(
                      top: 24,
                    ),
                    child: Text(
                      "lbl_my_expense".tr,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtInterSemiBold16,
                    ),
                  ),
                  Container(
                    margin: getMargin(
                      top: 14,
                      right: 24,
                    ),
                    padding: getPadding(
                      left: 21,
                      top: 18,
                      right: 21,
                      bottom: 18,
                    ),
                    decoration: AppDecoration.fillWhiteA700.copyWith(
                      borderRadius: BorderRadiusStyle.roundedBorder17,
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Padding(
                          padding: getPadding(
                            top: 61,
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Container(
                                height: getVerticalSize(
                                  93.00,
                                ),
                                width: getHorizontalSize(
                                  35.00,
                                ),
                                decoration: BoxDecoration(
                                  color: ColorConstant.gray10001,
                                  borderRadius: BorderRadius.circular(
                                    getHorizontalSize(
                                      10.00,
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: getPadding(
                                  top: 10,
                                ),
                                child: Text(
                                  "lbl_aug".tr,
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
                            left: 15,
                            top: 12,
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Container(
                                height: getVerticalSize(
                                  142.00,
                                ),
                                width: getHorizontalSize(
                                  35.00,
                                ),
                                decoration: BoxDecoration(
                                  color: ColorConstant.gray10001,
                                  borderRadius: BorderRadius.circular(
                                    getHorizontalSize(
                                      10.00,
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: getPadding(
                                  top: 10,
                                ),
                                child: Text(
                                  "lbl_sep".tr,
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
                            left: 15,
                            top: 58,
                            bottom: 1,
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Container(
                                height: getVerticalSize(
                                  96.00,
                                ),
                                width: getHorizontalSize(
                                  35.00,
                                ),
                                decoration: BoxDecoration(
                                  color: ColorConstant.gray10001,
                                  borderRadius: BorderRadius.circular(
                                    getHorizontalSize(
                                      10.00,
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: getPadding(
                                  top: 9,
                                ),
                                child: Text(
                                  "lbl_oct".tr,
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
                            left: 15,
                            top: 105,
                            bottom: 1,
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Container(
                                height: getVerticalSize(
                                  49.00,
                                ),
                                width: getHorizontalSize(
                                  35.00,
                                ),
                                decoration: BoxDecoration(
                                  color: ColorConstant.gray10001,
                                  borderRadius: BorderRadius.circular(
                                    getHorizontalSize(
                                      10.00,
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: getPadding(
                                  top: 9,
                                ),
                                child: Text(
                                  "lbl_nov".tr,
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
                            left: 7,
                            top: 2,
                            bottom: 1,
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(
                                "lbl_12_500".tr,
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: AppStyle.txtInterMedium13,
                              ),
                              Container(
                                height: getVerticalSize(
                                  129.00,
                                ),
                                width: getHorizontalSize(
                                  35.00,
                                ),
                                margin: getMargin(
                                  top: 7,
                                ),
                                decoration: BoxDecoration(
                                  color: ColorConstant.indigo600,
                                  borderRadius: BorderRadius.circular(
                                    getHorizontalSize(
                                      10.00,
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: getPadding(
                                  top: 9,
                                ),
                                child: Text(
                                  "lbl_dec".tr,
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
                            left: 7,
                            top: 66,
                            bottom: 1,
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Container(
                                height: getVerticalSize(
                                  88.00,
                                ),
                                width: getHorizontalSize(
                                  35.00,
                                ),
                                decoration: BoxDecoration(
                                  color: ColorConstant.gray10001,
                                  borderRadius: BorderRadius.circular(
                                    getHorizontalSize(
                                      10.00,
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: getPadding(
                                  top: 9,
                                ),
                                child: Text(
                                  "lbl_jan".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtInterRegular12,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: getPadding(
                      left: 1,
                      top: 24,
                      right: 34,
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CustomTextFormField(
                          width: 120,
                          focusNode: FocusNode(),
                          controller: controller.group1035Controller,
                          hintText: "msg_all_transaction".tr,
                          variant: TextFormFieldVariant.UnderLineIndigo600,
                          fontStyle: TextFormFieldFontStyle.InterMedium13,
                          textInputAction: TextInputAction.done,
                        ),
                        Padding(
                          padding: getPadding(
                            left: 43,
                            bottom: 8,
                          ),
                          child: Text(
                            "lbl_income".tr,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: AppStyle.txtInterMedium13Bluegray400,
                          ),
                        ),
                        Spacer(),
                        Padding(
                          padding: getPadding(
                            top: 1,
                            bottom: 7,
                          ),
                          child: Text(
                            "lbl_expense".tr,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: AppStyle.txtInterMedium13Bluegray400,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: getVerticalSize(
                      1.00,
                    ),
                    width: getHorizontalSize(
                      325.00,
                    ),
                    margin: getMargin(
                      left: 1,
                    ),
                    decoration: BoxDecoration(
                      color: ColorConstant.gray300,
                    ),
                  ),
                  Container(
                    width: getHorizontalSize(
                      327.00,
                    ),
                    margin: getMargin(
                      left: 1,
                      top: 16,
                    ),
                    padding: getPadding(
                      left: 21,
                      top: 18,
                      right: 21,
                      bottom: 18,
                    ),
                    decoration: AppDecoration.fillWhiteA700.copyWith(
                      borderRadius: BorderRadiusStyle.roundedBorder17,
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: getPadding(
                            top: 2,
                          ),
                          child: Obx(
                            () => ListView.separated(
                              physics: NeverScrollableScrollPhysics(),
                              shrinkWrap: true,
                              separatorBuilder: (context, index) {
                                return Container(
                                  height: getVerticalSize(
                                    1.00,
                                  ),
                                  width: getHorizontalSize(
                                    285.00,
                                  ),
                                  decoration: BoxDecoration(
                                    color: ColorConstant.gray10003,
                                  ),
                                );
                              },
                              itemCount: controller.transactionsModelObj.value
                                  .transactionsItemList.length,
                              itemBuilder: (context, index) {
                                TransactionsItemModel model = controller
                                    .transactionsModelObj
                                    .value
                                    .transactionsItemList[index];
                                return TransactionsItemWidget(
                                  model,
                                );
                              },
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerRight,
                    child: Padding(
                      padding: getPadding(
                        top: 16,
                        right: 24,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          CustomImageView(
                            svgPath: ImageConstant.imgArrowleft,
                            height: getSize(
                              16.00,
                            ),
                            width: getSize(
                              16.00,
                            ),
                            margin: getMargin(
                              top: 7,
                              bottom: 7,
                            ),
                          ),
                          Padding(
                            padding: getPadding(
                              left: 6,
                              top: 7,
                              bottom: 7,
                            ),
                            child: Text(
                              "lbl_previous".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtInterMedium12,
                            ),
                          ),
                          CustomButton(
                            height: 30,
                            width: 30,
                            text: "lbl_1".tr,
                            margin: getMargin(
                              left: 10,
                            ),
                            variant: ButtonVariant.FillIndigo600,
                            shape: ButtonShape.RoundedBorder7,
                            padding: ButtonPadding.PaddingAll6,
                            fontStyle: ButtonFontStyle.InterMedium12,
                          ),
                          Padding(
                            padding: getPadding(
                              left: 10,
                              top: 8,
                              bottom: 6,
                            ),
                            child: Text(
                              "lbl_22".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtInterMedium12,
                            ),
                          ),
                          Padding(
                            padding: getPadding(
                              left: 22,
                              top: 8,
                              bottom: 6,
                            ),
                            child: Text(
                              "lbl_32".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtInterMedium12,
                            ),
                          ),
                          Padding(
                            padding: getPadding(
                              left: 22,
                              top: 8,
                              bottom: 6,
                            ),
                            child: Text(
                              "lbl_42".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtInterMedium12,
                            ),
                          ),
                          Padding(
                            padding: getPadding(
                              left: 22,
                              top: 8,
                              bottom: 6,
                            ),
                            child: Text(
                              "lbl_next".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtInterMedium12,
                            ),
                          ),
                          CustomImageView(
                            svgPath: ImageConstant.imgArrowright,
                            height: getSize(
                              16.00,
                            ),
                            width: getSize(
                              16.00,
                            ),
                            margin: getMargin(
                              left: 6,
                              top: 7,
                              bottom: 7,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
