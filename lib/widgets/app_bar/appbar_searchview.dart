import 'package:flutter/material.dart';
import 'package:nnaji_christian_s_application7/core/app_export.dart';
import 'package:nnaji_christian_s_application7/widgets/custom_search_view.dart';

// ignore: must_be_immutable
class AppbarSearchview extends StatelessWidget {
  AppbarSearchview({this.hintText, this.controller, this.margin});

  String? hintText;

  TextEditingController? controller;

  EdgeInsetsGeometry? margin;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: margin ?? EdgeInsets.zero,
      child: CustomSearchView(
        width: 327,
        focusNode: FocusNode(),
        controller: controller,
        hintText: hintText,
        prefix: Container(
          margin: getMargin(
            left: 16,
            top: 12,
            right: 10,
            bottom: 12,
          ),
          child: CustomImageView(
            svgPath: ImageConstant.imgSearch,
          ),
        ),
        prefixConstraints: BoxConstraints(
          minWidth: getSize(
            16.00,
          ),
          minHeight: getSize(
            16.00,
          ),
        ),
      ),
    );
  }
}
