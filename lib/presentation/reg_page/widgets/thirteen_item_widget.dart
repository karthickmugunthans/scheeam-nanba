import '../models/thirteen_item_model.dart';
import 'package:flutter/material.dart';
import 'package:karthick_mugunthan_s_s_application3/core/app_export.dart';

// ignore: must_be_immutable
class ThirteenItemWidget extends StatelessWidget {
  ThirteenItemWidget(
    this.thirteenItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  ThirteenItemModel thirteenItemModelObj;

  @override
  Widget build(BuildContext context) {
    return CustomImageView(
      imagePath: ImageConstant.imgBackground1,
      height: 190.v,
      width: 339.h,
      radius: BorderRadius.circular(
        20.h,
      ),
    );
  }
}
