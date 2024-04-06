import 'package:karthick_mugunthan_s_s_application3/presentation/reg_page/reg_page.dart';
import 'package:karthick_mugunthan_s_s_application3/widgets/app_bar/custom_app_bar.dart';
import 'package:karthick_mugunthan_s_s_application3/widgets/app_bar/appbar_leading_image.dart';
import 'package:karthick_mugunthan_s_s_application3/widgets/app_bar/appbar_trailing_iconbutton.dart';
import 'package:karthick_mugunthan_s_s_application3/widgets/custom_icon_button.dart';
import 'package:karthick_mugunthan_s_s_application3/widgets/custom_bottom_bar.dart';
import 'models/reg_one_model.dart';
import 'package:flutter/material.dart';
import 'package:karthick_mugunthan_s_s_application3/core/app_export.dart';
import 'bloc/reg_one_bloc.dart';

class RegOneScreen extends StatelessWidget {
  RegOneScreen({Key? key})
      : super(
          key: key,
        );

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  static Widget builder(BuildContext context) {
    return BlocProvider<RegOneBloc>(
      create: (context) => RegOneBloc(RegOneState(
        regOneModelObj: RegOneModel(),
      ))
        ..add(RegOneInitialEvent()),
      child: RegOneScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<RegOneBloc, RegOneState>(
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            appBar: _buildAppBar(context),
            body: SizedBox(
              width: SizeUtils.width,
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Container(
                      padding: EdgeInsets.symmetric(
                        horizontal: 24.h,
                        vertical: 7.v,
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadiusStyle.roundedBorder27,
                      ),
                      child: Column(
                        children: [
                          Container(
                            decoration: AppDecoration.outlineBlack,
                            child: Text(
                              "msg_breakfast_scheme".tr,
                              style: theme.textTheme.headlineMedium,
                            ),
                          ),
                          SizedBox(height: 5.v),
                          SizedBox(
                            width: 219.h,
                            child: Divider(
                              color: appTheme.purple40001,
                            ),
                          ),
                          SizedBox(height: 25.v),
                          CustomImageView(
                            imagePath: ImageConstant.imgBackground1219x376,
                            height: 219.v,
                            width: 376.h,
                            radius: BorderRadius.circular(
                              20.h,
                            ),
                          ),
                          SizedBox(height: 34.v),
                          SizedBox(
                            width: 219.h,
                            child: Divider(
                              color: appTheme.purple40001,
                            ),
                          ),
                          SizedBox(height: 33.v),
                          _buildDETAILS(context),
                          SizedBox(height: 69.v),
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
            bottomNavigationBar: Padding(
              padding: EdgeInsets.only(
                left: 39.h,
                right: 33.h,
              ),
              child: _buildBottomBar(context),
            ),
          ),
        );
      },
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
  Widget _buildDETAILS(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 8.h),
      padding: EdgeInsets.symmetric(
        horizontal: 4.h,
        vertical: 1.v,
      ),
      decoration: AppDecoration.outlinePurple.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder27,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            decoration: AppDecoration.outlineBlack,
            child: Text(
              "lbl_details".tr,
              style: theme.textTheme.headlineLarge,
            ),
          ),
          SizedBox(height: 6.v),
          SizedBox(
            height: 169.v,
            width: 347.h,
            child: Stack(
              alignment: Alignment.bottomRight,
              children: [
                Align(
                  alignment: Alignment.topCenter,
                  child: SizedBox(
                    width: 347.h,
                    child: RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: "                         ".tr,
                          ),
                          TextSpan(
                            text: "msg_the_chief_minister_s2".tr,
                            style: CustomTextStyles.bodyLargeff000000,
                          ),
                        ],
                      ),
                      textAlign: TextAlign.left,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(right: 7.h),
                  child: CustomIconButton(
                    height: 29.v,
                    width: 27.h,
                    alignment: Alignment.bottomRight,
                    child: CustomImageView(
                      imagePath: ImageConstant.imgSpeark011,
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 6.v),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildBottomBar(BuildContext context) {
    return CustomBottomBar(
      onChanged: (BottomBarEnum type) {
        Navigator.pushNamed(
            navigatorKey.currentContext!, getCurrentRoute(type));
      },
    );
  }

  ///Handling route based on bottom click actions
  String getCurrentRoute(BottomBarEnum type) {
    switch (type) {
      case BottomBarEnum.Chatbotmessage:
        return AppRoutes.regPage;
      case BottomBarEnum.Untitled1recovered02:
        return "/";
      case BottomBarEnum.Untitled1recovered04:
        return "/";
      default:
        return "/";
    }
  }

  ///Handling page based on route
  Widget getCurrentPage(
    BuildContext context,
    String currentRoute,
  ) {
    switch (currentRoute) {
      case AppRoutes.regPage:
        return RegPage.builder(context);
      default:
        return DefaultWidget();
    }
  }
}
