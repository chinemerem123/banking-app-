import 'controller/setting_edit_profile_controller.dart';
import 'package:flutter/material.dart';
import 'package:nnaji_christian_s_application7/core/app_export.dart';
import 'package:nnaji_christian_s_application7/widgets/app_bar/appbar_circleimage.dart';
import 'package:nnaji_christian_s_application7/widgets/app_bar/appbar_image.dart';
import 'package:nnaji_christian_s_application7/widgets/app_bar/appbar_searchview.dart';
import 'package:nnaji_christian_s_application7/widgets/app_bar/appbar_title.dart';
import 'package:nnaji_christian_s_application7/widgets/app_bar/custom_app_bar.dart';
import 'package:nnaji_christian_s_application7/widgets/custom_button.dart';
import 'package:nnaji_christian_s_application7/widgets/custom_drop_down.dart';
import 'package:nnaji_christian_s_application7/widgets/custom_text_form_field.dart';

class SettingEditProfileScreen extends GetWidget<SettingEditProfileController> {
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
            body: SizedBox(
                width: size.width,
                child: SingleChildScrollView(
                    child: Container(
                        margin:
                            getMargin(left: 24, top: 24, right: 24, bottom: 5),
                        padding: getPadding(
                            left: 20, top: 22, right: 20, bottom: 22),
                        decoration: AppDecoration.fillWhiteA700.copyWith(
                            borderRadius: BorderRadiusStyle.roundedBorder17),
                        child: Column(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    CustomTextFormField(
                                        width: 80,
                                        focusNode: FocusNode(),
                                        controller:
                                            controller.group1063Controller,
                                        hintText: "lbl_edit_profile".tr,
                                        variant: TextFormFieldVariant
                                            .UnderLineIndigo600,
                                        fontStyle: TextFormFieldFontStyle
                                            .InterMedium13),
                                    GestureDetector(
                                        onTap: () {
                                          onTapTxtPreference();
                                        },
                                        child: Padding(
                                            padding:
                                                getPadding(left: 36, bottom: 8),
                                            child: Text("lbl_preference".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: AppStyle
                                                    .txtInterMedium13Bluegray400))),
                                    GestureDetector(
                                        onTap: () {
                                          onTapTxtSecurity();
                                        },
                                        child: Padding(
                                            padding: getPadding(
                                                left: 42, top: 1, bottom: 7),
                                            child: Text("lbl_security".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: AppStyle
                                                    .txtInterMedium13Bluegray400)))
                                  ]),
                              Container(
                                  height: getVerticalSize(1.00),
                                  width: getHorizontalSize(285.00),
                                  decoration: BoxDecoration(
                                      color: ColorConstant.gray10005)),
                              Container(
                                  height: getVerticalSize(170.00),
                                  width: getHorizontalSize(174.00),
                                  margin: getMargin(top: 25),
                                  child: Stack(
                                      alignment: Alignment.bottomRight,
                                      children: [
                                        CustomImageView(
                                            imagePath:
                                                ImageConstant.imgEllipse28,
                                            height: getSize(170.00),
                                            width: getSize(170.00),
                                            radius: BorderRadius.circular(
                                                getHorizontalSize(85.00)),
                                            alignment: Alignment.center),
                                        Align(
                                            alignment: Alignment.bottomRight,
                                            child: Card(
                                                clipBehavior: Clip.antiAlias,
                                                elevation: 0,
                                                margin: getMargin(bottom: 20),
                                                color: ColorConstant.indigo600,
                                                shape: RoundedRectangleBorder(
                                                    borderRadius:
                                                        BorderRadiusStyle
                                                            .roundedBorder17),
                                                child: Container(
                                                    height: getSize(38.00),
                                                    width: getSize(38.00),
                                                    padding: getPadding(all: 9),
                                                    decoration: AppDecoration
                                                        .fillIndigo600
                                                        .copyWith(
                                                            borderRadius:
                                                                BorderRadiusStyle
                                                                    .roundedBorder17),
                                                    child: Stack(children: [
                                                      CustomImageView(
                                                          svgPath: ImageConstant
                                                              .imgTicket18x18,
                                                          height:
                                                              getSize(18.00),
                                                          width: getSize(18.00),
                                                          alignment: Alignment
                                                              .bottomRight)
                                                    ]))))
                                      ])),
                              Container(
                                  width: getHorizontalSize(285.00),
                                  margin: getMargin(top: 22, right: 2),
                                  decoration: BoxDecoration(
                                      borderRadius:
                                          BorderRadiusStyle.roundedBorder10),
                                  child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Text("lbl_your_name".tr,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle
                                                .txtInterRegular13Bluegray400),
                                        CustomTextFormField(
                                            width: 285,
                                            focusNode: FocusNode(),
                                            controller:
                                                controller.languageController,
                                            hintText: "lbl_charlene_reed".tr,
                                            margin: getMargin(top: 8))
                                      ])),
                              Container(
                                  width: getHorizontalSize(285.00),
                                  margin: getMargin(top: 16, right: 2),
                                  decoration: BoxDecoration(
                                      borderRadius:
                                          BorderRadiusStyle.roundedBorder10),
                                  child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Text("lbl_user_name".tr,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle
                                                .txtInterRegular13Bluegray400),
                                        CustomTextFormField(
                                            width: 285,
                                            focusNode: FocusNode(),
                                            controller: controller
                                                .languageOneController,
                                            hintText: "lbl_charlene_reed".tr,
                                            margin: getMargin(top: 8))
                                      ])),
                              Container(
                                  width: getHorizontalSize(285.00),
                                  margin: getMargin(top: 16, right: 2),
                                  decoration: BoxDecoration(
                                      borderRadius:
                                          BorderRadiusStyle.roundedBorder10),
                                  child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Text("lbl_email".tr,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle
                                                .txtInterRegular13Bluegray400),
                                        CustomTextFormField(
                                            width: 285,
                                            focusNode: FocusNode(),
                                            controller:
                                                controller.emailOneController,
                                            hintText: "msg_charlenereed_gm".tr,
                                            margin: getMargin(top: 8))
                                      ])),
                              Container(
                                  width: getHorizontalSize(285.00),
                                  margin: getMargin(top: 16, right: 2),
                                  decoration: BoxDecoration(
                                      borderRadius:
                                          BorderRadiusStyle.roundedBorder10),
                                  child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Text("lbl_password".tr,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle
                                                .txtInterRegular13Bluegray400),
                                        CustomTextFormField(
                                            width: 285,
                                            focusNode: FocusNode(),
                                            controller: controller
                                                .passwordOneController,
                                            hintText: "lbl".tr,
                                            margin: getMargin(top: 8),
                                            isObscureText: true)
                                      ])),
                              Container(
                                  width: getHorizontalSize(285.00),
                                  margin: getMargin(top: 16, right: 2),
                                  decoration: BoxDecoration(
                                      borderRadius:
                                          BorderRadiusStyle.roundedBorder10),
                                  child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Text("lbl_date_of_birth".tr,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle
                                                .txtInterRegular13Bluegray400),
                                        CustomDropDown(
                                            width: 285,
                                            focusNode: FocusNode(),
                                            icon: Container(
                                                margin: getMargin(
                                                    left: 30, right: 20),
                                                child: CustomImageView(
                                                    svgPath: ImageConstant
                                                        .imgArrowrightBlueGray400)),
                                            hintText: "lbl_25_january_1990".tr,
                                            margin: getMargin(top: 8),
                                            items: controller
                                                .settingEditProfileModelObj
                                                .value
                                                .dropdownItemList,
                                            onChanged: (value) {
                                              controller.onSelected(value);
                                            })
                                      ])),
                              Container(
                                  width: getHorizontalSize(285.00),
                                  margin: getMargin(top: 16, right: 2),
                                  decoration: BoxDecoration(
                                      borderRadius:
                                          BorderRadiusStyle.roundedBorder10),
                                  child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Text("lbl_present_address".tr,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle
                                                .txtInterRegular13Bluegray400),
                                        CustomTextFormField(
                                            width: 285,
                                            focusNode: FocusNode(),
                                            controller:
                                                controller.group572Controller,
                                            hintText: "msg_san_jose_calif".tr,
                                            margin: getMargin(top: 8))
                                      ])),
                              Container(
                                  width: getHorizontalSize(285.00),
                                  margin: getMargin(top: 16, right: 2),
                                  decoration: BoxDecoration(
                                      borderRadius:
                                          BorderRadiusStyle.roundedBorder10),
                                  child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Text("msg_permanent_addre".tr,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle
                                                .txtInterRegular13Bluegray400),
                                        CustomTextFormField(
                                            width: 285,
                                            focusNode: FocusNode(),
                                            controller: controller
                                                .group572OneController,
                                            hintText: "msg_san_jose_calif".tr,
                                            margin: getMargin(top: 8))
                                      ])),
                              Container(
                                  width: getHorizontalSize(285.00),
                                  margin: getMargin(top: 17, right: 2),
                                  decoration: BoxDecoration(
                                      borderRadius:
                                          BorderRadiusStyle.roundedBorder10),
                                  child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Text("lbl_city".tr,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle
                                                .txtInterRegular13Bluegray400),
                                        CustomTextFormField(
                                            width: 285,
                                            focusNode: FocusNode(),
                                            controller: controller
                                                .group572TwoController,
                                            hintText: "lbl_san_jose".tr,
                                            margin: getMargin(top: 7))
                                      ])),
                              Container(
                                  width: getHorizontalSize(285.00),
                                  margin: getMargin(top: 16, right: 2),
                                  decoration: BoxDecoration(
                                      borderRadius:
                                          BorderRadiusStyle.roundedBorder10),
                                  child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Text("lbl_postal_code".tr,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle
                                                .txtInterRegular13Bluegray400),
                                        CustomTextFormField(
                                            width: 285,
                                            focusNode: FocusNode(),
                                            controller:
                                                controller.zipcodeController,
                                            hintText: "lbl_45962".tr,
                                            margin: getMargin(top: 8))
                                      ])),
                              Container(
                                  width: getHorizontalSize(285.00),
                                  margin: getMargin(top: 17, right: 2),
                                  decoration: BoxDecoration(
                                      borderRadius:
                                          BorderRadiusStyle.roundedBorder10),
                                  child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Text("lbl_country".tr,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle
                                                .txtInterRegular13Bluegray400),
                                        CustomTextFormField(
                                            width: 285,
                                            focusNode: FocusNode(),
                                            controller: controller
                                                .group572ThreeController,
                                            hintText: "lbl_usa".tr,
                                            margin: getMargin(top: 7),
                                            textInputAction:
                                                TextInputAction.done)
                                      ])),
                              CustomButton(
                                  height: 40,
                                  width: 287,
                                  text: "lbl_save".tr,
                                  margin: getMargin(top: 20, bottom: 2),
                                  variant: ButtonVariant.FillIndigo600,
                                  shape: ButtonShape.RoundedBorder7,
                                  padding: ButtonPadding.PaddingAll11,
                                  fontStyle: ButtonFontStyle.InterMedium15)
                            ]))))));
  }

  onTapTxtPreference() {
    Get.toNamed(AppRoutes.settingPreferenceScreen);
  }

  onTapTxtSecurity() {
    Get.toNamed(AppRoutes.settingSecurityScreen);
  }
}
