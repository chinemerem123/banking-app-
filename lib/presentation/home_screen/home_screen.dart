import '../home_screen/widgets/home_item_widget.dart';
import 'controller/home_controller.dart';
import 'models/home_item_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;
import 'package:nnaji_christian_s_application7/core/app_export.dart';
import 'package:nnaji_christian_s_application7/widgets/app_bar/appbar_circleimage.dart';
import 'package:nnaji_christian_s_application7/widgets/app_bar/appbar_image.dart';
import 'package:nnaji_christian_s_application7/widgets/app_bar/appbar_searchview.dart';
import 'package:nnaji_christian_s_application7/widgets/app_bar/appbar_title.dart';
import 'package:nnaji_christian_s_application7/widgets/app_bar/custom_app_bar.dart';
import 'package:nnaji_christian_s_application7/widgets/custom_button.dart';
import 'package:nnaji_christian_s_application7/widgets/custom_icon_button.dart';
import 'package:nnaji_christian_s_application7/widgets/custom_text_form_field.dart';

class HomeScreen extends GetWidget<HomeController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.gray100,
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
                                text: "lbl_overview".tr,
                                margin: getMargin(left: 93, top: 3, bottom: 6)),
                            AppbarCircleimage(
                                imagePath: ImageConstant.imgPexelschristin,
                                margin: getMargin(left: 82))
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
                    child: Padding(
                        padding: getPadding(left: 24, top: 24, bottom: 5),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Padding(
                                  padding: getPadding(right: 24),
                                  child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text("lbl_my_cards".tr,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle.txtInterSemiBold16),
                                        GestureDetector(
                                            onTap: () {
                                              onTapTxtSeeall();
                                            },
                                            child: Padding(
                                                padding: getPadding(bottom: 2),
                                                child: Text("lbl_see_all".tr,
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    textAlign: TextAlign.left,
                                                    style: AppStyle
                                                        .txtInterSemiBold14)))
                                      ])),
                              SingleChildScrollView(
                                  scrollDirection: Axis.horizontal,
                                  padding: getPadding(top: 14),
                                  child: IntrinsicWidth(
                                      child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                        Container(
                                            decoration: AppDecoration
                                                .fillIndigo600
                                                .copyWith(
                                                    borderRadius:
                                                        BorderRadiusStyle
                                                            .roundedBorder17),
                                            child: Column(
                                                mainAxisSize: MainAxisSize.min,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.end,
                                                children: [
                                                  Align(
                                                      alignment:
                                                          Alignment.center,
                                                      child: Container(
                                                          width:
                                                              getHorizontalSize(
                                                                  225.00),
                                                          margin: getMargin(
                                                              left: 20,
                                                              top: 17,
                                                              right: 20),
                                                          child: Row(
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .spaceBetween,
                                                              crossAxisAlignment:
                                                                  CrossAxisAlignment
                                                                      .start,
                                                              children: [
                                                                Column(
                                                                    crossAxisAlignment:
                                                                        CrossAxisAlignment
                                                                            .start,
                                                                    mainAxisAlignment:
                                                                        MainAxisAlignment
                                                                            .start,
                                                                    children: [
                                                                      Text(
                                                                          "lbl_balance"
                                                                              .tr,
                                                                          overflow: TextOverflow
                                                                              .ellipsis,
                                                                          textAlign: TextAlign
                                                                              .left,
                                                                          style:
                                                                              AppStyle.txtInterRegular11),
                                                                      Padding(
                                                                          padding: getPadding(
                                                                              top:
                                                                                  2),
                                                                          child: Text(
                                                                              "lbl_5_756".tr,
                                                                              overflow: TextOverflow.ellipsis,
                                                                              textAlign: TextAlign.left,
                                                                              style: AppStyle.txtInterRegular16))
                                                                    ]),
                                                                CustomImageView(
                                                                    imagePath:
                                                                        ImageConstant
                                                                            .imgChipcard,
                                                                    height:
                                                                        getSize(
                                                                            29.00),
                                                                    width: getSize(
                                                                        29.00),
                                                                    margin: getMargin(
                                                                        bottom:
                                                                            6))
                                                              ]))),
                                                  Padding(
                                                      padding: getPadding(
                                                          left: 20, top: 19),
                                                      child: Row(children: [
                                                        Column(
                                                            crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .start,
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .start,
                                                            children: [
                                                              Text(
                                                                  "lbl_card_holder"
                                                                      .tr,
                                                                  overflow:
                                                                      TextOverflow
                                                                          .ellipsis,
                                                                  textAlign:
                                                                      TextAlign
                                                                          .left,
                                                                  style: AppStyle
                                                                      .txtInterRegular10),
                                                              Padding(
                                                                  padding:
                                                                      getPadding(
                                                                          top:
                                                                              4),
                                                                  child: Text(
                                                                      "lbl_eddy_cusuma"
                                                                          .tr,
                                                                      overflow:
                                                                          TextOverflow
                                                                              .ellipsis,
                                                                      textAlign:
                                                                          TextAlign
                                                                              .left,
                                                                      style: AppStyle
                                                                          .txtInterRegular13))
                                                            ]),
                                                        Padding(
                                                            padding: getPadding(
                                                                left: 50),
                                                            child: Column(
                                                                crossAxisAlignment:
                                                                    CrossAxisAlignment
                                                                        .start,
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .start,
                                                                children: [
                                                                  Text(
                                                                      "lbl_valid_thru"
                                                                          .tr,
                                                                      overflow:
                                                                          TextOverflow
                                                                              .ellipsis,
                                                                      textAlign:
                                                                          TextAlign
                                                                              .left,
                                                                      style: AppStyle
                                                                          .txtInterRegular10),
                                                                  Padding(
                                                                      padding: getPadding(
                                                                          top:
                                                                              4),
                                                                      child: Text(
                                                                          "lbl_12_22"
                                                                              .tr,
                                                                          overflow: TextOverflow
                                                                              .ellipsis,
                                                                          textAlign: TextAlign
                                                                              .left,
                                                                          style:
                                                                              AppStyle.txtInterRegular13))
                                                                ]))
                                                      ])),
                                                  CustomTextFormField(
                                                      width: 265,
                                                      focusNode: FocusNode(),
                                                      controller: controller
                                                          .group1721Controller,
                                                      hintText: "msg_3778".tr,
                                                      margin:
                                                          getMargin(top: 14),
                                                      variant: TextFormFieldVariant
                                                          .GradientWhiteA70026WhiteA70026,
                                                      shape: TextFormFieldShape
                                                          .CustomBorderBL15,
                                                      padding:
                                                          TextFormFieldPadding
                                                              .PaddingT15,
                                                      fontStyle:
                                                          TextFormFieldFontStyle
                                                              .InterRegular15,
                                                      suffix: Container(
                                                          margin: getMargin(
                                                              left: 30,
                                                              top: 16,
                                                              right: 17,
                                                              bottom: 16),
                                                          child: CustomImageView(
                                                              svgPath: ImageConstant
                                                                  .imgContrast)),
                                                      suffixConstraints:
                                                          BoxConstraints(
                                                              minWidth:
                                                                  getHorizontalSize(
                                                                      27.00),
                                                              minHeight:
                                                                  getVerticalSize(
                                                                      18.00)))
                                                ])),
                                        Container(
                                            margin: getMargin(left: 20),
                                            decoration: AppDecoration
                                                .fillIndigo500
                                                .copyWith(
                                                    borderRadius:
                                                        BorderRadiusStyle
                                                            .roundedBorder17),
                                            child: Column(
                                                mainAxisSize: MainAxisSize.min,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.end,
                                                children: [
                                                  Align(
                                                      alignment:
                                                          Alignment.center,
                                                      child: Container(
                                                          width:
                                                              getHorizontalSize(
                                                                  225.00),
                                                          margin: getMargin(
                                                              left: 20,
                                                              top: 17,
                                                              right: 20),
                                                          child: Row(
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .spaceBetween,
                                                              crossAxisAlignment:
                                                                  CrossAxisAlignment
                                                                      .start,
                                                              children: [
                                                                Column(
                                                                    crossAxisAlignment:
                                                                        CrossAxisAlignment
                                                                            .start,
                                                                    mainAxisAlignment:
                                                                        MainAxisAlignment
                                                                            .start,
                                                                    children: [
                                                                      Text(
                                                                          "lbl_balance"
                                                                              .tr,
                                                                          overflow: TextOverflow
                                                                              .ellipsis,
                                                                          textAlign: TextAlign
                                                                              .left,
                                                                          style:
                                                                              AppStyle.txtInterRegular11),
                                                                      Padding(
                                                                          padding: getPadding(
                                                                              top:
                                                                                  2),
                                                                          child: Text(
                                                                              "lbl_5_756".tr,
                                                                              overflow: TextOverflow.ellipsis,
                                                                              textAlign: TextAlign.left,
                                                                              style: AppStyle.txtInterRegular16))
                                                                    ]),
                                                                CustomImageView(
                                                                    imagePath:
                                                                        ImageConstant
                                                                            .imgChipcard,
                                                                    height:
                                                                        getSize(
                                                                            29.00),
                                                                    width: getSize(
                                                                        29.00),
                                                                    margin: getMargin(
                                                                        bottom:
                                                                            6))
                                                              ]))),
                                                  Padding(
                                                      padding: getPadding(
                                                          left: 20, top: 18),
                                                      child: Row(children: [
                                                        Column(
                                                            crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .start,
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .start,
                                                            children: [
                                                              Text(
                                                                  "lbl_card_holder"
                                                                      .tr,
                                                                  overflow:
                                                                      TextOverflow
                                                                          .ellipsis,
                                                                  textAlign:
                                                                      TextAlign
                                                                          .left,
                                                                  style: AppStyle
                                                                      .txtInterRegular10),
                                                              Padding(
                                                                  padding:
                                                                      getPadding(
                                                                          top:
                                                                              5),
                                                                  child: Text(
                                                                      "lbl_eddy_cusuma"
                                                                          .tr,
                                                                      overflow:
                                                                          TextOverflow
                                                                              .ellipsis,
                                                                      textAlign:
                                                                          TextAlign
                                                                              .left,
                                                                      style: AppStyle
                                                                          .txtInterRegular13))
                                                            ]),
                                                        Padding(
                                                            padding: getPadding(
                                                                left: 50,
                                                                bottom: 1),
                                                            child: Column(
                                                                crossAxisAlignment:
                                                                    CrossAxisAlignment
                                                                        .start,
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .start,
                                                                children: [
                                                                  Text(
                                                                      "lbl_valid_thru"
                                                                          .tr,
                                                                      overflow:
                                                                          TextOverflow
                                                                              .ellipsis,
                                                                      textAlign:
                                                                          TextAlign
                                                                              .left,
                                                                      style: AppStyle
                                                                          .txtInterRegular10),
                                                                  Padding(
                                                                      padding: getPadding(
                                                                          top:
                                                                              4),
                                                                      child: Text(
                                                                          "lbl_12_22"
                                                                              .tr,
                                                                          overflow: TextOverflow
                                                                              .ellipsis,
                                                                          textAlign: TextAlign
                                                                              .left,
                                                                          style:
                                                                              AppStyle.txtInterRegular13))
                                                                ]))
                                                      ])),
                                                  CustomTextFormField(
                                                      width: 265,
                                                      focusNode: FocusNode(),
                                                      controller: controller
                                                          .group1722Controller,
                                                      hintText: "msg_3778".tr,
                                                      margin:
                                                          getMargin(top: 12),
                                                      variant: TextFormFieldVariant
                                                          .GradientWhiteA70026WhiteA70026,
                                                      shape: TextFormFieldShape
                                                          .CustomBorderBL15,
                                                      padding:
                                                          TextFormFieldPadding
                                                              .PaddingT15,
                                                      fontStyle:
                                                          TextFormFieldFontStyle
                                                              .InterRegular15,
                                                      textInputAction:
                                                          TextInputAction.done,
                                                      suffix: Container(
                                                          margin: getMargin(
                                                              left: 30,
                                                              top: 16,
                                                              right: 17,
                                                              bottom: 16),
                                                          child: CustomImageView(
                                                              svgPath: ImageConstant
                                                                  .imgContrast)),
                                                      suffixConstraints:
                                                          BoxConstraints(
                                                              minWidth:
                                                                  getHorizontalSize(
                                                                      27.00),
                                                              minHeight:
                                                                  getVerticalSize(
                                                                      18.00)))
                                                ]))
                                      ]))),
                              Padding(
                                  padding: getPadding(top: 22),
                                  child: Text("msg_recent_transact".tr,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtInterSemiBold16)),
                              Container(
                                  margin: getMargin(top: 16, right: 24),
                                  padding: getPadding(
                                      left: 19, top: 20, right: 19, bottom: 20),
                                  decoration: AppDecoration.fillWhiteA700
                                      .copyWith(
                                          borderRadius: BorderRadiusStyle
                                              .roundedBorder17),
                                  child: Obx(() => ListView.builder(
                                      physics: NeverScrollableScrollPhysics(),
                                      shrinkWrap: true,
                                      itemCount: controller.homeModelObj.value
                                          .homeItemList.length,
                                      itemBuilder: (context, index) {
                                        HomeItemModel model = controller
                                            .homeModelObj
                                            .value
                                            .homeItemList[index];
                                        return HomeItemWidget(model);
                                      }))),
                              Padding(
                                  padding: getPadding(top: 24),
                                  child: Text("lbl_weekly_activity".tr,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtInterSemiBold16)),
                              Container(
                                  width: getHorizontalSize(327.00),
                                  margin: getMargin(top: 14),
                                  padding: getPadding(
                                      left: 18, top: 16, right: 18, bottom: 16),
                                  decoration: AppDecoration.fillWhiteA700
                                      .copyWith(
                                          borderRadius: BorderRadiusStyle
                                              .roundedBorder17),
                                  child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.end,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Padding(
                                            padding: getPadding(right: 2),
                                            child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.end,
                                                children: [
                                                  Container(
                                                      height: getSize(12.00),
                                                      width: getSize(12.00),
                                                      margin: getMargin(
                                                          top: 1, bottom: 2),
                                                      decoration: BoxDecoration(
                                                          color: ColorConstant
                                                              .indigo200,
                                                          borderRadius:
                                                              BorderRadius.circular(
                                                                  getHorizontalSize(
                                                                      6.00)))),
                                                  Padding(
                                                      padding: getPadding(
                                                          left: 10, top: 1),
                                                      child: Text(
                                                          "lbl_diposit".tr,
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.left,
                                                          style: AppStyle
                                                              .txtInterRegular12)),
                                                  Container(
                                                      height: getSize(12.00),
                                                      width: getSize(12.00),
                                                      margin: getMargin(
                                                          left: 28,
                                                          top: 1,
                                                          bottom: 2),
                                                      decoration: BoxDecoration(
                                                          color: ColorConstant
                                                              .indigo600,
                                                          borderRadius:
                                                              BorderRadius.circular(
                                                                  getHorizontalSize(
                                                                      6.00)))),
                                                  Padding(
                                                      padding: getPadding(
                                                          left: 10, bottom: 1),
                                                      child: Text(
                                                          "lbl_withdraw".tr,
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.left,
                                                          style: AppStyle
                                                              .txtInterRegular12))
                                                ])),
                                        Padding(
                                            padding: getPadding(right: 2),
                                            child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Padding(
                                                      padding: getPadding(
                                                          bottom: 24),
                                                      child: Column(
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .end,
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .start,
                                                          children: [
                                                            Align(
                                                                alignment:
                                                                    Alignment
                                                                        .center,
                                                                child: Text(
                                                                    "lbl_500"
                                                                        .tr,
                                                                    overflow:
                                                                        TextOverflow
                                                                            .ellipsis,
                                                                    textAlign:
                                                                        TextAlign
                                                                            .left,
                                                                    style: AppStyle
                                                                        .txtInterRegular12)),
                                                            Padding(
                                                                padding:
                                                                    getPadding(
                                                                        top:
                                                                            18),
                                                                child: Text(
                                                                    "lbl_400"
                                                                        .tr,
                                                                    overflow:
                                                                        TextOverflow
                                                                            .ellipsis,
                                                                    textAlign:
                                                                        TextAlign
                                                                            .left,
                                                                    style: AppStyle
                                                                        .txtInterRegular12)),
                                                            Padding(
                                                                padding:
                                                                    getPadding(
                                                                        top:
                                                                            17),
                                                                child: Text(
                                                                    "lbl_300"
                                                                        .tr,
                                                                    overflow:
                                                                        TextOverflow
                                                                            .ellipsis,
                                                                    textAlign:
                                                                        TextAlign
                                                                            .left,
                                                                    style: AppStyle
                                                                        .txtInterRegular12)),
                                                            Align(
                                                                alignment:
                                                                    Alignment
                                                                        .center,
                                                                child: Padding(
                                                                    padding:
                                                                        getPadding(
                                                                            top:
                                                                                18),
                                                                    child: Text(
                                                                        "lbl_200"
                                                                            .tr,
                                                                        overflow:
                                                                            TextOverflow
                                                                                .ellipsis,
                                                                        textAlign:
                                                                            TextAlign
                                                                                .left,
                                                                        style: AppStyle
                                                                            .txtInterRegular12))),
                                                            Align(
                                                                alignment: Alignment
                                                                    .centerLeft,
                                                                child: Padding(
                                                                    padding:
                                                                        getPadding(
                                                                            top:
                                                                                18),
                                                                    child: Text(
                                                                        "lbl_100"
                                                                            .tr,
                                                                        overflow:
                                                                            TextOverflow
                                                                                .ellipsis,
                                                                        textAlign:
                                                                            TextAlign
                                                                                .left,
                                                                        style: AppStyle
                                                                            .txtInterRegular12))),
                                                            Padding(
                                                                padding:
                                                                    getPadding(
                                                                        top: 18,
                                                                        right:
                                                                            3),
                                                                child: Text(
                                                                    "lbl_06".tr,
                                                                    overflow:
                                                                        TextOverflow
                                                                            .ellipsis,
                                                                    textAlign:
                                                                        TextAlign
                                                                            .left,
                                                                    style: AppStyle
                                                                        .txtInterRegular12))
                                                          ])),
                                                  Container(
                                                      height: getVerticalSize(
                                                          193.00),
                                                      width: getHorizontalSize(
                                                          259.00),
                                                      margin:
                                                          getMargin(top: 10),
                                                      child: Stack(
                                                          alignment:
                                                              Alignment.center,
                                                          children: [
                                                            CustomImageView(
                                                                svgPath:
                                                                    ImageConstant
                                                                        .imgGroup438,
                                                                height:
                                                                    getVerticalSize(
                                                                        166.00),
                                                                width:
                                                                    getHorizontalSize(
                                                                        259.00),
                                                                alignment: Alignment
                                                                    .topCenter),
                                                            Align(
                                                                alignment:
                                                                    Alignment
                                                                        .center,
                                                                child:
                                                                    Container(
                                                                        width: getHorizontalSize(
                                                                            250.00),
                                                                        margin: getMargin(
                                                                            left:
                                                                                4,
                                                                            top:
                                                                                4,
                                                                            right:
                                                                                5),
                                                                        child: Row(
                                                                            mainAxisAlignment:
                                                                                MainAxisAlignment.spaceBetween,
                                                                            crossAxisAlignment: CrossAxisAlignment.end,
                                                                            children: [
                                                                              Column(mainAxisAlignment: MainAxisAlignment.start, children: [
                                                                                CustomImageView(svgPath: ImageConstant.imgGroup27, height: getVerticalSize(161.00), width: getHorizontalSize(19.00)),
                                                                                Padding(padding: getPadding(top: 13), child: Text("lbl_sat".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtInterRegular12))
                                                                              ]),
                                                                              Padding(
                                                                                  padding: getPadding(top: 47),
                                                                                  child: Column(crossAxisAlignment: CrossAxisAlignment.start, mainAxisAlignment: MainAxisAlignment.start, children: [
                                                                                    CustomImageView(svgPath: ImageConstant.imgGroup27, height: getVerticalSize(114.00), width: getHorizontalSize(19.00), alignment: Alignment.centerRight, margin: getMargin(right: 1)),
                                                                                    Align(alignment: Alignment.center, child: Padding(padding: getPadding(top: 13), child: Text("lbl_sun".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtInterRegular12)))
                                                                                  ])),
                                                                              Padding(
                                                                                  padding: getPadding(top: 49),
                                                                                  child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
                                                                                    CustomImageView(svgPath: ImageConstant.imgGroup27, height: getVerticalSize(112.00), width: getHorizontalSize(19.00)),
                                                                                    Padding(padding: getPadding(top: 13), child: Text("lbl_mon".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtInterRegular12))
                                                                                  ])),
                                                                              Column(mainAxisAlignment: MainAxisAlignment.start, children: [
                                                                                CustomImageView(svgPath: ImageConstant.imgGroup27, height: getVerticalSize(161.00), width: getHorizontalSize(19.00)),
                                                                                Padding(padding: getPadding(top: 13), child: Text("lbl_tue".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtInterRegular12))
                                                                              ]),
                                                                              Padding(
                                                                                  padding: getPadding(top: 84),
                                                                                  child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
                                                                                    CustomImageView(svgPath: ImageConstant.imgGroup31, height: getVerticalSize(77.00), width: getHorizontalSize(19.00)),
                                                                                    Padding(padding: getPadding(top: 13), child: Text("lbl_wed".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtInterRegular12))
                                                                                  ])),
                                                                              Padding(
                                                                                  padding: getPadding(top: 26),
                                                                                  child: Column(crossAxisAlignment: CrossAxisAlignment.start, mainAxisAlignment: MainAxisAlignment.start, children: [
                                                                                    CustomImageView(svgPath: ImageConstant.imgGroup27, height: getVerticalSize(135.00), width: getHorizontalSize(19.00), alignment: Alignment.centerRight, margin: getMargin(right: 1)),
                                                                                    Align(alignment: Alignment.center, child: Padding(padding: getPadding(top: 13), child: Text("lbl_thu".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtInterRegular12)))
                                                                                  ])),
                                                                              Padding(
                                                                                  padding: getPadding(top: 30),
                                                                                  child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
                                                                                    CustomImageView(svgPath: ImageConstant.imgGroup27, height: getVerticalSize(131.00), width: getHorizontalSize(19.00)),
                                                                                    Padding(padding: getPadding(top: 13), child: Text("lbl_fri".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtInterRegular12))
                                                                                  ]))
                                                                            ])))
                                                          ]))
                                                ]))
                                      ])),
                              Padding(
                                  padding: getPadding(left: 2, top: 24),
                                  child: Text("msg_expense_statist".tr,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtInterSemiBold16)),
                              Container(
                                  width: getHorizontalSize(327.00),
                                  margin: getMargin(left: 2, top: 14),
                                  padding: getPadding(
                                      left: 62, top: 22, right: 62, bottom: 22),
                                  decoration: AppDecoration.fillWhiteA700
                                      .copyWith(
                                          borderRadius: BorderRadiusStyle
                                              .roundedBorder17),
                                  child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Container(
                                            width: getHorizontalSize(202.00),
                                            padding: getPadding(
                                                left: 10,
                                                top: 19,
                                                right: 10,
                                                bottom: 19),
                                            decoration: BoxDecoration(
                                                image: DecorationImage(
                                                    image: fs.Svg(ImageConstant
                                                        .imgGroup443chart),
                                                    fit: BoxFit.cover)),
                                            child: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                children: [
                                                  Container(
                                                      width: getHorizontalSize(
                                                          79.00),
                                                      margin:
                                                          getMargin(left: 35),
                                                      child: RichText(
                                                          text: TextSpan(
                                                              children: [
                                                                TextSpan(
                                                                    text:
                                                                        "lbl_30"
                                                                            .tr,
                                                                    style: TextStyle(
                                                                        color: ColorConstant
                                                                            .whiteA700,
                                                                        fontSize:
                                                                            getFontSize(
                                                                                13.405783653259277),
                                                                        fontFamily:
                                                                            'Inter',
                                                                        fontWeight:
                                                                            FontWeight
                                                                                .w700,
                                                                        height:
                                                                            1.08)),
                                                                TextSpan(
                                                                    text:
                                                                        "lbl_entertainment"
                                                                            .tr,
                                                                    style: TextStyle(
                                                                        color: ColorConstant
                                                                            .whiteA700,
                                                                        fontSize:
                                                                            getFontSize(
                                                                                11.171485900878906),
                                                                        fontFamily:
                                                                            'Inter',
                                                                        fontWeight:
                                                                            FontWeight
                                                                                .w700,
                                                                        height:
                                                                            1.30))
                                                              ]),
                                                          textAlign: TextAlign
                                                              .center)),
                                                  Align(
                                                      alignment:
                                                          Alignment.centerRight,
                                                      child: Container(
                                                          width:
                                                              getHorizontalSize(
                                                                  66.00),
                                                          margin: getMargin(
                                                              top: 17,
                                                              right: 3),
                                                          child: RichText(
                                                              text: TextSpan(
                                                                  children: [
                                                                    TextSpan(
                                                                        text: "lbl_15"
                                                                            .tr,
                                                                        style: TextStyle(
                                                                            color: ColorConstant
                                                                                .whiteA700,
                                                                            fontSize: getFontSize(
                                                                                13.405783653259277),
                                                                            fontFamily:
                                                                                'Inter',
                                                                            fontWeight:
                                                                                FontWeight.w700,
                                                                            height: 1.08)),
                                                                    TextSpan(
                                                                        text: "lbl_bill_expense"
                                                                            .tr,
                                                                        style: TextStyle(
                                                                            color: ColorConstant
                                                                                .whiteA700,
                                                                            fontSize: getFontSize(
                                                                                11.171485900878906),
                                                                            fontFamily:
                                                                                'Inter',
                                                                            fontWeight:
                                                                                FontWeight.w700,
                                                                            height: 1.30))
                                                                  ]),
                                                              textAlign:
                                                                  TextAlign
                                                                      .center))),
                                                  Padding(
                                                      padding: getPadding(
                                                          top: 13, bottom: 26),
                                                      child: Row(
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .start,
                                                          children: [
                                                            Container(
                                                                width:
                                                                    getHorizontalSize(
                                                                        62.00),
                                                                margin:
                                                                    getMargin(
                                                                        bottom:
                                                                            20),
                                                                child: RichText(
                                                                    text: TextSpan(
                                                                        children: [
                                                                          TextSpan(
                                                                              text: "lbl_20".tr,
                                                                              style: TextStyle(color: ColorConstant.whiteA700, fontSize: getFontSize(13.405783653259277), fontFamily: 'Inter', fontWeight: FontWeight.w700, height: 1.08)),
                                                                          TextSpan(
                                                                              text: "lbl_investment".tr,
                                                                              style: TextStyle(color: ColorConstant.whiteA700, fontSize: getFontSize(11.171485900878906), fontFamily: 'Inter', fontWeight: FontWeight.w700, height: 1.30))
                                                                        ]),
                                                                    textAlign:
                                                                        TextAlign
                                                                            .center)),
                                                            Container(
                                                                width:
                                                                    getHorizontalSize(
                                                                        38.00),
                                                                margin:
                                                                    getMargin(
                                                                        left:
                                                                            36,
                                                                        top:
                                                                            20),
                                                                child: RichText(
                                                                    text: TextSpan(
                                                                        children: [
                                                                          TextSpan(
                                                                              text: "lbl_35".tr,
                                                                              style: TextStyle(color: ColorConstant.whiteA700, fontSize: getFontSize(13.405783653259277), fontFamily: 'Inter', fontWeight: FontWeight.w700, height: 1.08)),
                                                                          TextSpan(
                                                                              text: "lbl_others".tr,
                                                                              style: TextStyle(color: ColorConstant.whiteA700, fontSize: getFontSize(11.171485900878906), fontFamily: 'Inter', fontWeight: FontWeight.w700, height: 1.30))
                                                                        ]),
                                                                    textAlign:
                                                                        TextAlign
                                                                            .center))
                                                          ]))
                                                ]))
                                      ])),
                              Padding(
                                  padding: getPadding(top: 23),
                                  child: Text("lbl_quick_transfer".tr,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtInterSemiBold16)),
                              Container(
                                  width: getHorizontalSize(327.00),
                                  margin: getMargin(top: 15),
                                  padding: getPadding(
                                      left: 18, top: 20, right: 18, bottom: 20),
                                  decoration: AppDecoration.fillWhiteA700
                                      .copyWith(
                                          borderRadius: BorderRadiusStyle
                                              .roundedBorder17),
                                  child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Padding(
                                            padding: getPadding(right: 2),
                                            child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Padding(
                                                      padding:
                                                          getPadding(bottom: 1),
                                                      child: Column(
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .start,
                                                          children: [
                                                            CustomImageView(
                                                                imagePath:
                                                                    ImageConstant
                                                                        .imgEllipse18,
                                                                height: getSize(
                                                                    50.00),
                                                                width: getSize(
                                                                    50.00),
                                                                radius: BorderRadius
                                                                    .circular(
                                                                        getHorizontalSize(
                                                                            25.00))),
                                                            Padding(
                                                                padding:
                                                                    getPadding(
                                                                        top:
                                                                            12),
                                                                child: Text(
                                                                    "lbl_livia_bator"
                                                                        .tr,
                                                                    overflow:
                                                                        TextOverflow
                                                                            .ellipsis,
                                                                    textAlign:
                                                                        TextAlign
                                                                            .left,
                                                                    style: AppStyle
                                                                        .txtInterRegular12Bluegray900)),
                                                            Padding(
                                                                padding:
                                                                    getPadding(
                                                                        top: 1),
                                                                child: Text(
                                                                    "lbl_ceo"
                                                                        .tr,
                                                                    overflow:
                                                                        TextOverflow
                                                                            .ellipsis,
                                                                    textAlign:
                                                                        TextAlign
                                                                            .left,
                                                                    style: AppStyle
                                                                        .txtInterRegular12))
                                                          ])),
                                                  Padding(
                                                      padding:
                                                          getPadding(bottom: 1),
                                                      child: Column(
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .start,
                                                          children: [
                                                            CustomImageView(
                                                                imagePath:
                                                                    ImageConstant
                                                                        .imgEllipse1850x50,
                                                                height: getSize(
                                                                    50.00),
                                                                width: getSize(
                                                                    50.00),
                                                                radius: BorderRadius
                                                                    .circular(
                                                                        getHorizontalSize(
                                                                            25.00))),
                                                            Padding(
                                                                padding:
                                                                    getPadding(
                                                                        top:
                                                                            13),
                                                                child: Text(
                                                                    "lbl_randy_press"
                                                                        .tr,
                                                                    overflow:
                                                                        TextOverflow
                                                                            .ellipsis,
                                                                    textAlign:
                                                                        TextAlign
                                                                            .left,
                                                                    style: AppStyle
                                                                        .txtInterRegular12Bluegray800)),
                                                            Text(
                                                                "lbl_director"
                                                                    .tr,
                                                                overflow:
                                                                    TextOverflow
                                                                        .ellipsis,
                                                                textAlign:
                                                                    TextAlign
                                                                        .left,
                                                                style: AppStyle
                                                                    .txtInterRegular12)
                                                          ])),
                                                  Column(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .start,
                                                      children: [
                                                        CustomImageView(
                                                            imagePath:
                                                                ImageConstant
                                                                    .imgEllipse181,
                                                            height:
                                                                getSize(50.00),
                                                            width:
                                                                getSize(50.00),
                                                            radius: BorderRadius
                                                                .circular(
                                                                    getHorizontalSize(
                                                                        25.00))),
                                                        Padding(
                                                            padding: getPadding(
                                                                top: 12),
                                                            child: Text(
                                                                "lbl_workman"
                                                                    .tr,
                                                                overflow:
                                                                    TextOverflow
                                                                        .ellipsis,
                                                                textAlign:
                                                                    TextAlign
                                                                        .left,
                                                                style: AppStyle
                                                                    .txtInterRegular12Bluegray900)),
                                                        Padding(
                                                            padding: getPadding(
                                                                top: 2),
                                                            child: Text(
                                                                "lbl_designer"
                                                                    .tr,
                                                                overflow:
                                                                    TextOverflow
                                                                        .ellipsis,
                                                                textAlign:
                                                                    TextAlign
                                                                        .left,
                                                                style: AppStyle
                                                                    .txtInterRegular12))
                                                      ]),
                                                  CustomIconButton(
                                                      height: 40,
                                                      width: 40,
                                                      margin: getMargin(
                                                          top: 24, bottom: 30),
                                                      variant: IconButtonVariant
                                                          .OutlineGray300cc,
                                                      shape: IconButtonShape
                                                          .CircleBorder20,
                                                      child: CustomImageView(
                                                          svgPath: ImageConstant
                                                              .imgArrowrightBlueGray400))
                                                ])),
                                        Container(
                                            margin:
                                                getMargin(top: 20, right: 2),
                                            decoration: BoxDecoration(
                                                borderRadius: BorderRadiusStyle
                                                    .circleBorder20),
                                            child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Padding(
                                                      padding: getPadding(
                                                          top: 11, bottom: 13),
                                                      child: Text(
                                                          "lbl_write_amount".tr,
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.left,
                                                          style: AppStyle
                                                              .txtInterRegular12)),
                                                  Container(
                                                      width: getHorizontalSize(
                                                          187.00),
                                                      decoration: AppDecoration
                                                          .fillGray10001
                                                          .copyWith(
                                                              borderRadius:
                                                                  BorderRadiusStyle
                                                                      .circleBorder20),
                                                      child: Row(
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .spaceBetween,
                                                          children: [
                                                            Padding(
                                                                padding:
                                                                    getPadding(
                                                                        left:
                                                                            15,
                                                                        top: 13,
                                                                        bottom:
                                                                            11),
                                                                child: Text(
                                                                    "lbl_525_50"
                                                                        .tr,
                                                                    overflow:
                                                                        TextOverflow
                                                                            .ellipsis,
                                                                    textAlign:
                                                                        TextAlign
                                                                            .left,
                                                                    style: AppStyle
                                                                        .txtInterBold12)),
                                                            CustomButton(
                                                                height: 40,
                                                                width: 100,
                                                                text: "lbl_send"
                                                                    .tr,
                                                                variant:
                                                                    ButtonVariant
                                                                        .OutlineGray300cc,
                                                                shape: ButtonShape
                                                                    .CircleBorder20,
                                                                padding:
                                                                    ButtonPadding
                                                                        .PaddingAll11,
                                                                fontStyle:
                                                                    ButtonFontStyle
                                                                        .InterMedium13)
                                                          ]))
                                                ]))
                                      ])),
                              Padding(
                                  padding: getPadding(left: 1, top: 24),
                                  child: Text("lbl_balance_history".tr,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle
                                          .txtInterSemiBold16Bluegray800)),
                              Card(
                                  clipBehavior: Clip.antiAlias,
                                  elevation: 0,
                                  margin: getMargin(left: 1, top: 14),
                                  color: ColorConstant.whiteA700,
                                  shape: RoundedRectangleBorder(
                                      borderRadius:
                                          BorderRadiusStyle.roundedBorder17),
                                  child: Container(
                                      height: getVerticalSize(223.00),
                                      width: getHorizontalSize(325.00),
                                      padding: getPadding(
                                          left: 18,
                                          top: 14,
                                          right: 18,
                                          bottom: 14),
                                      decoration: AppDecoration.fillWhiteA700
                                          .copyWith(
                                              borderRadius: BorderRadiusStyle
                                                  .roundedBorder17),
                                      child: Stack(
                                          alignment: Alignment.centerRight,
                                          children: [
                                            Align(
                                                alignment: Alignment.topLeft,
                                                child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.min,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment.end,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.start,
                                                    children: [
                                                      Row(
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .spaceBetween,
                                                          children: [
                                                            Text("lbl_800".tr,
                                                                overflow:
                                                                    TextOverflow
                                                                        .ellipsis,
                                                                textAlign:
                                                                    TextAlign
                                                                        .left,
                                                                style: AppStyle
                                                                    .txtInterRegular12),
                                                            Container(
                                                                height:
                                                                    getVerticalSize(
                                                                        1.00),
                                                                width:
                                                                    getHorizontalSize(
                                                                        6.00),
                                                                margin:
                                                                    getMargin(
                                                                        top: 7,
                                                                        bottom:
                                                                            6),
                                                                decoration:
                                                                    BoxDecoration(
                                                                        color: ColorConstant
                                                                            .blueGray400))
                                                          ]),
                                                      Padding(
                                                          padding: getPadding(
                                                              top: 25),
                                                          child: Row(
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .spaceBetween,
                                                              children: [
                                                                Text(
                                                                    "lbl_600"
                                                                        .tr,
                                                                    overflow:
                                                                        TextOverflow
                                                                            .ellipsis,
                                                                    textAlign:
                                                                        TextAlign
                                                                            .left,
                                                                    style: AppStyle
                                                                        .txtInterRegular12),
                                                                Container(
                                                                    height:
                                                                        getVerticalSize(
                                                                            1.00),
                                                                    width:
                                                                        getHorizontalSize(
                                                                            6.00),
                                                                    margin: getMargin(
                                                                        top: 7,
                                                                        bottom:
                                                                            6),
                                                                    decoration:
                                                                        BoxDecoration(
                                                                            color:
                                                                                ColorConstant.blueGray400))
                                                              ])),
                                                      Padding(
                                                          padding: getPadding(
                                                              top: 25),
                                                          child: Row(
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .spaceBetween,
                                                              children: [
                                                                Text(
                                                                    "lbl_400"
                                                                        .tr,
                                                                    overflow:
                                                                        TextOverflow
                                                                            .ellipsis,
                                                                    textAlign:
                                                                        TextAlign
                                                                            .left,
                                                                    style: AppStyle
                                                                        .txtInterRegular12),
                                                                Container(
                                                                    height:
                                                                        getVerticalSize(
                                                                            1.00),
                                                                    width:
                                                                        getHorizontalSize(
                                                                            6.00),
                                                                    margin: getMargin(
                                                                        top: 7,
                                                                        bottom:
                                                                            6),
                                                                    decoration:
                                                                        BoxDecoration(
                                                                            color:
                                                                                ColorConstant.blueGray400))
                                                              ])),
                                                      Padding(
                                                          padding: getPadding(
                                                              left: 1, top: 25),
                                                          child: Row(
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .spaceBetween,
                                                              crossAxisAlignment:
                                                                  CrossAxisAlignment
                                                                      .start,
                                                              children: [
                                                                Text(
                                                                    "lbl_200"
                                                                        .tr,
                                                                    overflow:
                                                                        TextOverflow
                                                                            .ellipsis,
                                                                    textAlign:
                                                                        TextAlign
                                                                            .left,
                                                                    style: AppStyle
                                                                        .txtInterRegular12),
                                                                Container(
                                                                    height:
                                                                        getVerticalSize(
                                                                            1.00),
                                                                    width:
                                                                        getHorizontalSize(
                                                                            6.00),
                                                                    margin: getMargin(
                                                                        top: 6,
                                                                        bottom:
                                                                            7),
                                                                    decoration:
                                                                        BoxDecoration(
                                                                            color:
                                                                                ColorConstant.blueGray400))
                                                              ])),
                                                      Padding(
                                                          padding: getPadding(
                                                              top: 25),
                                                          child: Row(
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .end,
                                                              children: [
                                                                Text(
                                                                    "lbl_06".tr,
                                                                    overflow:
                                                                        TextOverflow
                                                                            .ellipsis,
                                                                    textAlign:
                                                                        TextAlign
                                                                            .left,
                                                                    style: AppStyle
                                                                        .txtInterRegular12),
                                                                Container(
                                                                    height:
                                                                        getVerticalSize(
                                                                            1.00),
                                                                    width:
                                                                        getHorizontalSize(
                                                                            6.00),
                                                                    margin: getMargin(
                                                                        left: 5,
                                                                        top: 6,
                                                                        bottom:
                                                                            7),
                                                                    decoration:
                                                                        BoxDecoration(
                                                                            color:
                                                                                ColorConstant.blueGray400))
                                                              ]))
                                                    ])),
                                            Align(
                                                alignment:
                                                    Alignment.centerRight,
                                                child: Container(
                                                    height:
                                                        getVerticalSize(184.00),
                                                    width: getHorizontalSize(
                                                        256.00),
                                                    child: Stack(
                                                        alignment:
                                                            Alignment.topCenter,
                                                        children: [
                                                          Align(
                                                              alignment: Alignment
                                                                  .bottomLeft,
                                                              child: Row(
                                                                  children: [
                                                                    Padding(
                                                                        padding: getPadding(
                                                                            bottom:
                                                                                1),
                                                                        child: Column(
                                                                            crossAxisAlignment:
                                                                                CrossAxisAlignment.start,
                                                                            mainAxisAlignment: MainAxisAlignment.start,
                                                                            children: [
                                                                              CustomImageView(svgPath: ImageConstant.imgGroup, height: getVerticalSize(4.00), width: getHorizontalSize(1.00), margin: getMargin(left: 1)),
                                                                              Padding(padding: getPadding(top: 3), child: Text("lbl_jul".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtInterRegular12))
                                                                            ])),
                                                                    Padding(
                                                                        padding: getPadding(
                                                                            left:
                                                                                20),
                                                                        child: Column(
                                                                            crossAxisAlignment:
                                                                                CrossAxisAlignment.start,
                                                                            mainAxisAlignment: MainAxisAlignment.start,
                                                                            children: [
                                                                              CustomImageView(svgPath: ImageConstant.imgGroup, height: getVerticalSize(4.00), width: getHorizontalSize(1.00)),
                                                                              Padding(padding: getPadding(top: 5), child: Text("lbl_aug".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtInterRegular12))
                                                                            ])),
                                                                    Padding(
                                                                        padding: getPadding(
                                                                            left:
                                                                                14),
                                                                        child: Column(
                                                                            crossAxisAlignment:
                                                                                CrossAxisAlignment.start,
                                                                            mainAxisAlignment: MainAxisAlignment.start,
                                                                            children: [
                                                                              CustomImageView(svgPath: ImageConstant.imgGroup, height: getVerticalSize(4.00), width: getHorizontalSize(1.00)),
                                                                              Padding(padding: getPadding(top: 4), child: Text("lbl_sep".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtInterRegular12))
                                                                            ])),
                                                                    Padding(
                                                                        padding: getPadding(
                                                                            left:
                                                                                15,
                                                                            bottom:
                                                                                1),
                                                                        child: Column(
                                                                            crossAxisAlignment:
                                                                                CrossAxisAlignment.start,
                                                                            mainAxisAlignment: MainAxisAlignment.start,
                                                                            children: [
                                                                              CustomImageView(svgPath: ImageConstant.imgGroup, height: getVerticalSize(4.00), width: getHorizontalSize(1.00)),
                                                                              Padding(padding: getPadding(top: 3), child: Text("lbl_oct".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtInterRegular12))
                                                                            ])),
                                                                    Padding(
                                                                        padding: getPadding(
                                                                            left:
                                                                                15,
                                                                            bottom:
                                                                                1),
                                                                        child: Column(
                                                                            crossAxisAlignment:
                                                                                CrossAxisAlignment.start,
                                                                            mainAxisAlignment: MainAxisAlignment.start,
                                                                            children: [
                                                                              CustomImageView(svgPath: ImageConstant.imgGroup, height: getVerticalSize(4.00), width: getHorizontalSize(1.00)),
                                                                              Padding(padding: getPadding(top: 3), child: Text("lbl_nov2".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtInterRegular12))
                                                                            ])),
                                                                    Padding(
                                                                        padding: getPadding(
                                                                            left:
                                                                                13),
                                                                        child: Column(
                                                                            crossAxisAlignment:
                                                                                CrossAxisAlignment.start,
                                                                            mainAxisAlignment: MainAxisAlignment.start,
                                                                            children: [
                                                                              CustomImageView(svgPath: ImageConstant.imgGroup, height: getVerticalSize(4.00), width: getHorizontalSize(1.00)),
                                                                              Padding(padding: getPadding(top: 4), child: Text("lbl_dec".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtInterRegular12))
                                                                            ])),
                                                                    Padding(
                                                                        padding: getPadding(
                                                                            left:
                                                                                14,
                                                                            bottom:
                                                                                1),
                                                                        child: Column(
                                                                            crossAxisAlignment:
                                                                                CrossAxisAlignment.start,
                                                                            mainAxisAlignment: MainAxisAlignment.start,
                                                                            children: [
                                                                              CustomImageView(svgPath: ImageConstant.imgGroup, height: getVerticalSize(4.00), width: getHorizontalSize(1.00)),
                                                                              Padding(padding: getPadding(top: 3), child: Text("lbl_jan".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtInterRegular12))
                                                                            ]))
                                                                  ])),
                                                          CustomImageView(
                                                              svgPath: ImageConstant
                                                                  .imgGroup1032,
                                                              height:
                                                                  getVerticalSize(
                                                                      161.00),
                                                              width:
                                                                  getHorizontalSize(
                                                                      255.00),
                                                              alignment:
                                                                  Alignment
                                                                      .topCenter)
                                                        ])))
                                          ])))
                            ]))))));
  }

  onTapTxtSeeall() {
    Get.toNamed(AppRoutes.creditCardsScreen);
  }
}
