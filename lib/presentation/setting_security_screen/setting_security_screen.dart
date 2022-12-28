import 'controller/setting_security_controller.dart';
import 'package:flutter/material.dart';
import 'package:nnaji_christian_s_application7/core/app_export.dart';
import 'package:nnaji_christian_s_application7/widgets/app_bar/appbar_circleimage.dart';
import 'package:nnaji_christian_s_application7/widgets/app_bar/appbar_image.dart';
import 'package:nnaji_christian_s_application7/widgets/app_bar/appbar_searchview.dart';
import 'package:nnaji_christian_s_application7/widgets/app_bar/appbar_title.dart';
import 'package:nnaji_christian_s_application7/widgets/app_bar/custom_app_bar.dart';
import 'package:nnaji_christian_s_application7/widgets/custom_button.dart';
import 'package:nnaji_christian_s_application7/widgets/custom_text_form_field.dart';

class SettingSecurityScreen extends GetWidget<SettingSecurityController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.gray10002,
            appBar: CustomAppBar(
                height: getVerticalSize(122.00),
                centerTitle: true,
                title: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                          padding: getPadding(left: 24, top: 7, right: 24),
                          child: Row(children: [
                            AppbarImage(
                                height: getSize(24.00),
                                width: getSize(24.00),
                                svgPath: ImageConstant.imgMenu,
                                margin: getMargin(top: 5, bottom: 6)),
                            AppbarTitle(
                                text: "lbl_setting".tr,
                                margin:
                                    getMargin(left: 104, top: 6, bottom: 3)),
                            AppbarCircleimage(
                                imagePath: ImageConstant.imgPexelschristin,
                                margin: getMargin(left: 94))
                          ])),
                      AppbarSearchview(
                          hintText: "msg_search_for_some".tr,
                          controller: controller.group420Controller,
                          margin: getMargin(
                              left: 24, top: 20, right: 24, bottom: 20))
                    ]),
                styleType: Style.bgFillWhiteA700),
            body: Container(
                margin: getMargin(left: 24, top: 24, right: 26, bottom: 5),
                padding: getPadding(left: 20, top: 22, right: 20, bottom: 22),
                decoration: AppDecoration.fillWhiteA700
                    .copyWith(borderRadius: BorderRadiusStyle.roundedBorder17),
                child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                          padding: getPadding(left: 6),
                          child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                GestureDetector(
                                    onTap: () {
                                      onTapTxtEditprofile();
                                    },
                                    child: Padding(
                                        padding: getPadding(bottom: 8),
                                        child: Text("lbl_edit_profile".tr,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle
                                                .txtInterMedium13Bluegray400))),
                                GestureDetector(
                                    onTap: () {
                                      onTapTxtPreference();
                                    },
                                    child: Padding(
                                        padding:
                                            getPadding(left: 42, bottom: 8),
                                        child: Text("lbl_preference".tr,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle
                                                .txtInterMedium13Bluegray400))),
                                CustomTextFormField(
                                    width: 67,
                                    focusNode: FocusNode(),
                                    controller: controller.group1069Controller,
                                    hintText: "lbl_security".tr,
                                    margin: getMargin(left: 34, top: 1),
                                    variant:
                                        TextFormFieldVariant.UnderLineIndigo600,
                                    fontStyle:
                                        TextFormFieldFontStyle.InterMedium13)
                              ])),
                      Container(
                          height: getVerticalSize(1.00),
                          width: getHorizontalSize(285.00),
                          decoration:
                              BoxDecoration(color: ColorConstant.gray10005)),
                      Padding(
                          padding: getPadding(top: 21),
                          child: Text("msg_two_factor_auth".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtInterMedium14)),
                      Padding(
                          padding: getPadding(top: 14),
                          child: Row(children: [
                            Card(
                                clipBehavior: Clip.antiAlias,
                                elevation: 0,
                                margin: getMargin(bottom: 1),
                                color: ColorConstant.green600,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadiusStyle
                                        .roundedBorder10),
                                child: Container(
                                    height: getVerticalSize(24.00),
                                    width: getHorizontalSize(44.00),
                                    padding: getPadding(all: 1),
                                    decoration: AppDecoration.fillGreen600
                                        .copyWith(
                                            borderRadius: BorderRadiusStyle
                                                .roundedBorder10),
                                    child: Stack(children: [
                                      CustomImageView(
                                          svgPath: ImageConstant.imgEllipse32,
                                          height: getSize(21.00),
                                          width: getSize(21.00),
                                          alignment: Alignment.centerRight)
                                    ]))),
                            Container(
                                width: getHorizontalSize(172.00),
                                margin: getMargin(left: 12),
                                child: Text("msg_enable_or_disab".tr,
                                    maxLines: null,
                                    textAlign: TextAlign.left,
                                    style:
                                        AppStyle.txtInterRegular13Bluegray400))
                          ])),
                      Padding(
                          padding: getPadding(top: 23),
                          child: Text("lbl_change_password".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtInterMedium14)),
                      Container(
                          width: getHorizontalSize(285.00),
                          margin: getMargin(top: 12),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadiusStyle.roundedBorder10),
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text("msg_current_passwor".tr,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style:
                                        AppStyle.txtInterRegular13Bluegray400),
                                CustomTextFormField(
                                    width: 285,
                                    focusNode: FocusNode(),
                                    controller: controller.group572Controller,
                                    hintText: "lbl_charlene_123".tr,
                                    margin: getMargin(top: 8))
                              ])),
                      Container(
                          width: getHorizontalSize(285.00),
                          margin: getMargin(top: 16),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadiusStyle.roundedBorder10),
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text("lbl_new_password".tr,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style:
                                        AppStyle.txtInterRegular13Bluegray400),
                                CustomTextFormField(
                                    width: 285,
                                    focusNode: FocusNode(),
                                    controller:
                                        controller.group572OneController,
                                    hintText: "lbl_charlene_123".tr,
                                    margin: getMargin(top: 8),
                                    textInputAction: TextInputAction.done)
                              ])),
                      CustomButton(
                          height: 40,
                          width: 285,
                          text: "lbl_save".tr,
                          margin: getMargin(top: 20, bottom: 2),
                          variant: ButtonVariant.FillIndigo600,
                          shape: ButtonShape.RoundedBorder7,
                          padding: ButtonPadding.PaddingAll11,
                          fontStyle: ButtonFontStyle.InterMedium15)
                    ]))));
  }

  onTapTxtEditprofile() {
    Get.toNamed(AppRoutes.settingEditProfileScreen);
  }

  onTapTxtPreference() {
    Get.toNamed(AppRoutes.settingPreferenceScreen);
  }
}
