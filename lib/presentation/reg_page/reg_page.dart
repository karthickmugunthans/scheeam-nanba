import 'package:karthick_mugunthan_s_s_application3/widgets/app_bar/custom_app_bar.dart';
import 'package:karthick_mugunthan_s_s_application3/widgets/app_bar/appbar_leading_image.dart';
import 'package:karthick_mugunthan_s_s_application3/widgets/app_bar/appbar_trailing_iconbutton.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'widgets/thirteen_item_widget.dart';
import 'models/thirteen_item_model.dart';
import 'models/reg_model.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:flutter/material.dart';
import 'package:karthick_mugunthan_s_s_application3/core/app_export.dart';
import 'bloc/reg_bloc.dart';

// ignore_for_file: must_be_immutable
class RegPage extends StatelessWidget {
  const RegPage({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<RegBloc>(
      create: (context) => RegBloc(RegState(
        regModelObj: RegModel(),
      ))
        ..add(RegInitialEvent()),
      child: RegPage(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: _buildAppBar(context),
        body: SizedBox(
          width: SizeUtils.width,
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 13.h),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadiusStyle.roundedBorder27,
                  ),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 454.v,
                        width: 401.h,
                        child: Stack(
                          alignment: Alignment.topCenter,
                          children: [
                            _buildThirtyThree(context),
                            Align(
                              alignment: Alignment.topCenter,
                              child: SizedBox(
                                width: 166.h,
                                child: Text(
                                  "lbl_new_schemes".tr,
                                  maxLines: 4,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.center,
                                  style: theme.textTheme.headlineLarge,
                                ),
                              ),
                            ),
                            _buildNANBA(context),
                          ],
                        ),
                      ),
                      SizedBox(height: 16.v),
                      _buildView(context),
                      SizedBox(height: 31.v),
                    ],
                  ),
                ),
                SizedBox(height: 22.v),
                Container(
                  height: 126.v,
                  width: double.maxFinite,
                  decoration: BoxDecoration(
                    color: appTheme.purple40001,
                    borderRadius: BorderRadius.circular(
                      10.h,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      leadingWidth: 45.h,
      leading: AppbarLeadingImage(
        imagePath: ImageConstant.imgMegaphone,
        margin: EdgeInsets.only(
          left: 15.h,
          top: 18.v,
          bottom: 64.v,
        ),
      ),
      actions: [
        AppbarTrailingIconbutton(
          imagePath: ImageConstant.imgEllipse4,
          margin: EdgeInsets.fromLTRB(19.h, 8.v, 19.h, 52.v),
        ),
      ],
      styleType: Style.bgFill,
    );
  }

  /// Section Widget
  Widget _buildThirtyThree(BuildContext context) {
    return Align(
      alignment: Alignment.topCenter,
      child: Container(
        margin: EdgeInsets.only(
          left: 5.h,
          top: 24.v,
          right: 7.h,
        ),
        padding: EdgeInsets.symmetric(
          horizontal: 20.h,
          vertical: 34.v,
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadiusStyle.roundedBorder27,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Padding(
              padding: EdgeInsets.only(right: 7.h),
              child: BlocBuilder<RegBloc, RegState>(
                builder: (context, state) {
                  return CarouselSlider.builder(
                    options: CarouselOptions(
                      height: 190.v,
                      initialPage: 0,
                      autoPlay: true,
                      viewportFraction: 1.0,
                      enableInfiniteScroll: false,
                      scrollDirection: Axis.horizontal,
                      onPageChanged: (
                        index,
                        reason,
                      ) {
                        state.sliderIndex = index;
                      },
                    ),
                    itemCount: state.regModelObj?.thirteenItemList.length ?? 0,
                    itemBuilder: (context, index, realIndex) {
                      ThirteenItemModel model =
                          state.regModelObj?.thirteenItemList[index] ??
                              ThirteenItemModel();
                      return ThirteenItemWidget(
                        model,
                      );
                    },
                  );
                },
              ),
            ),
            SizedBox(height: 12.v),
            BlocBuilder<RegBloc, RegState>(
              builder: (context, state) {
                return SizedBox(
                  height: 11.v,
                  child: AnimatedSmoothIndicator(
                    activeIndex: state.sliderIndex,
                    count: state.regModelObj?.thirteenItemList.length ?? 0,
                    axisDirection: Axis.horizontal,
                    effect: ScrollingDotsEffect(
                      activeDotColor: Color(0X1212121D),
                      dotHeight: 11.v,
                    ),
                  ),
                );
              },
            ),
            SizedBox(height: 17.v),
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildNANBA(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        margin: EdgeInsets.only(top: 289.v),
        padding: EdgeInsets.symmetric(
          horizontal: 49.h,
          vertical: 22.v,
        ),
        decoration: AppDecoration.fillPurple.copyWith(
          borderRadius: BorderRadiusStyle.roundedBorder82,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 90.v,
              width: 167.h,
              margin: EdgeInsets.only(
                top: 9.v,
                bottom: 22.v,
              ),
              child: Stack(
                alignment: Alignment.topCenter,
                children: [
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Container(
                      decoration: AppDecoration.outlineBlack,
                      child: Text(
                        "lbl_nanba".tr,
                        style: theme.textTheme.displayMedium,
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.topCenter,
                    child: Container(
                      width: 167.h,
                      decoration: AppDecoration.outlineBlack,
                      child: Text(
                        "lbl_scheme".tr,
                        maxLines: null,
                        overflow: TextOverflow.ellipsis,
                        style:
                            CustomTextStyles.headlineLargeSenSecondaryContainer,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            CustomImageView(
              imagePath: ImageConstant.imgChatbotMessage,
              height: 116.v,
              width: 105.h,
              margin: EdgeInsets.only(
                left: 11.h,
                bottom: 5.v,
              ),
            ),
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildView(BuildContext context) {
    return SizedBox(
      height: 167.v,
      width: 364.h,
      child: Stack(
        alignment: Alignment.topCenter,
        children: [
          Align(
            alignment: Alignment.center,
            child: Container(
              height: 160.v,
              width: 364.h,
              decoration: BoxDecoration(
                color: theme.colorScheme.secondaryContainer,
                borderRadius: BorderRadius.circular(
                  25.h,
                ),
                border: Border.all(
                  color: appTheme.purple40001,
                  width: 4.h,
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.topCenter,
            child: SizedBox(
              width: 103.h,
              child: Text(
                "lbl_updates".tr,
                maxLines: 4,
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.center,
                style: theme.textTheme.headlineLarge,
              ),
            ),
          ),
          Align(
            alignment: Alignment.topLeft,
            child: Container(
              margin: EdgeInsets.fromLTRB(10.h, 38.v, 27.h, 88.v),
              decoration: AppDecoration.outlineBlack,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 12.v,
                    width: 13.h,
                    margin: EdgeInsets.only(
                      top: 11.v,
                      bottom: 16.v,
                    ),
                    decoration: BoxDecoration(
                      color: appTheme.purple300,
                      borderRadius: BorderRadius.circular(
                        6.h,
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      width: 310.h,
                      margin: EdgeInsets.only(left: 2.h),
                      child: Text(
                        "msg_tamil_nadu_unemployment".tr,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.center,
                        style: theme.textTheme.bodyLarge,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Container(
              margin: EdgeInsets.fromLTRB(10.h, 65.v, 119.h, 61.v),
              decoration: AppDecoration.outlineBlack,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 12.v,
                    width: 13.h,
                    margin: EdgeInsets.only(
                      top: 12.v,
                      bottom: 16.v,
                    ),
                    decoration: BoxDecoration(
                      color: appTheme.purple300,
                      borderRadius: BorderRadius.circular(
                        6.h,
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      width: 219.h,
                      margin: EdgeInsets.only(left: 2.h),
                      child: Text(
                        "msg_tamil_nadu_1000".tr,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.center,
                        style: theme.textTheme.bodyLarge,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomLeft,
            child: Container(
              margin: EdgeInsets.fromLTRB(10.h, 93.v, 180.h, 33.v),
              decoration: AppDecoration.outlineBlack,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 12.v,
                    width: 13.h,
                    margin: EdgeInsets.only(
                      top: 12.v,
                      bottom: 16.v,
                    ),
                    decoration: BoxDecoration(
                      color: appTheme.purple300,
                      borderRadius: BorderRadius.circular(
                        6.h,
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      width: 156.h,
                      margin: EdgeInsets.only(left: 3.h),
                      child: Text(
                        "msg_self_sufficiency".tr,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.center,
                        style: theme.textTheme.bodyLarge,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomLeft,
            child: Container(
              height: 12.v,
              width: 13.h,
              margin: EdgeInsets.only(
                left: 10.h,
                bottom: 23.v,
              ),
              decoration: BoxDecoration(
                color: appTheme.purple300,
                borderRadius: BorderRadius.circular(
                  6.h,
                ),
                boxShadow: [
                  BoxShadow(
                    color: appTheme.black900.withOpacity(0.25),
                    spreadRadius: 2.h,
                    blurRadius: 2.h,
                    offset: Offset(
                      0,
                      4,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomRight,
            child: Container(
              width: 331.h,
              margin: EdgeInsets.only(
                right: 4.h,
                bottom: 7.v,
              ),
              child: Text(
                "msg_tamilnadu_village".tr,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.center,
                style: theme.textTheme.bodyLarge,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
