import 'package:karthick_mugunthan_s_s_application3/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';
import 'package:karthick_mugunthan_s_s_application3/core/app_export.dart';

// ignore: must_be_immutable
class AppbarTrailingIconbutton extends StatelessWidget {
  AppbarTrailingIconbutton({
    Key? key,
    this.imagePath,
    this.margin,
    this.onTap,
  }) : super(
          key: key,
        );

  String? imagePath;

  EdgeInsetsGeometry? margin;

  Function? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTap?.call();
      },
      child: Padding(
        padding: margin ?? EdgeInsets.zero,
        child: CustomIconButton(
          height: 42.v,
          width: 40.h,
          child: CustomImageView(
            imagePath: ImageConstant.imgEllipse4,
          ),
        ),
      ),
    );
  }
}
