import 'package:karthick_mugunthan_s_s_application3/widgets/custom_elevated_button.dart';
import 'package:karthick_mugunthan_s_s_application3/core/utils/validation_functions.dart';
import 'package:karthick_mugunthan_s_s_application3/widgets/custom_text_form_field.dart';
import 'package:outline_gradient_button/outline_gradient_button.dart';
import 'models/frame_one_model.dart';
import 'package:flutter/material.dart';
import 'package:karthick_mugunthan_s_s_application3/core/app_export.dart';
import 'bloc/frame_one_bloc.dart';

// ignore_for_file: must_be_immutable
class FrameOneScreen extends StatelessWidget {
  FrameOneScreen({Key? key})
      : super(
          key: key,
        );

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  static Widget builder(BuildContext context) {
    return BlocProvider<FrameOneBloc>(
      create: (context) => FrameOneBloc(FrameOneState(
        frameOneModelObj: FrameOneModel(),
      ))
        ..add(FrameOneInitialEvent()),
      child: FrameOneScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Form(
          key: _formKey,
          child: SingleChildScrollView(
            child: SizedBox(
              height: 881.v,
              width: double.maxFinite,
              child: Stack(
                alignment: Alignment.topCenter,
                children: [
                  _buildSIGNUP(context),
                  Align(
                    alignment: Alignment.topCenter,
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        _buildFourteen(context),
                        SizedBox(height: 15.v),
                        _buildEmail(context),
                        SizedBox(height: 24.v),
                        _buildPassword(context),
                        SizedBox(height: 25.v),
                        Align(
                          alignment: Alignment.centerRight,
                          child: Padding(
                            padding: EdgeInsets.only(right: 51.h),
                            child: Text(
                              "msg_forgot_password".tr,
                              style: CustomTextStyles.titleSmallPrimary,
                            ),
                          ),
                        ),
                        SizedBox(height: 13.v),
                        _buildLogin(context),
                        SizedBox(height: 3.v),
                        _buildFrame(context),
                        SizedBox(height: 104.v),
                        _buildGoogleFacebook(context)
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
        bottomNavigationBar: _buildFrame1(context),
      ),
    );
  }

  /// Section Widget
  Widget _buildSIGNUP(BuildContext context) {
    return CustomElevatedButton(
      height: 46.v,
      width: 148.h,
      text: "lbl_sign_up".tr,
      margin: EdgeInsets.only(bottom: 226.v),
      buttonStyle: CustomButtonStyles.fillPrimary,
      buttonTextStyle: theme.textTheme.titleSmall!,
      alignment: Alignment.bottomCenter,
    );
  }

  /// Section Widget
  Widget _buildFourteen(BuildContext context) {
    return SizedBox(
      height: 287.v,
      width: double.maxFinite,
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgEllipse1,
            height: 238.v,
            width: 428.h,
            alignment: Alignment.topCenter,
          ),
          CustomImageView(
            imagePath: ImageConstant.imgEllipse2,
            height: 140.adaptSize,
            width: 140.adaptSize,
            radius: BorderRadius.circular(
              70.h,
            ),
            alignment: Alignment.bottomCenter,
          )
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildEmail(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 29.h,
        right: 35.h,
      ),
      child: OutlineGradientButton(
        padding: EdgeInsets.only(
          left: 2.h,
          top: 2.v,
          right: 2.h,
          bottom: 2.v,
        ),
        strokeWidth: 2.h,
        gradient: LinearGradient(
          begin: Alignment(0, 0.5),
          end: Alignment(1, 0.5),
          colors: [appTheme.purple40051, theme.colorScheme.onPrimary],
        ),
        corners: Corners(
          topLeft: Radius.circular(16),
          topRight: Radius.circular(16),
          bottomLeft: Radius.circular(16),
          bottomRight: Radius.circular(16),
        ),
        child:
            BlocSelector<FrameOneBloc, FrameOneState, TextEditingController?>(
          selector: (state) => state.emailController,
          builder: (context, emailController) {
            return CustomTextFormField(
              controller: emailController,
              hintText: "lbl_email".tr,
              textInputType: TextInputType.emailAddress,
              prefix: Container(
                margin: EdgeInsets.fromLTRB(16.h, 14.v, 8.h, 14.v),
                child: CustomImageView(
                  imagePath: ImageConstant.imgIcons24pxFirst,
                  height: 28.adaptSize,
                  width: 28.adaptSize,
                ),
              ),
              prefixConstraints: BoxConstraints(
                maxHeight: 56.v,
              ),
              validator: (value) {
                if (value == null || (!isValidEmail(value, isRequired: true))) {
                  return "err_msg_please_enter_valid_email".tr;
                }
                return null;
              },
            );
          },
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildPassword(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 29.h,
        right: 35.h,
      ),
      child: BlocBuilder<FrameOneBloc, FrameOneState>(
        builder: (context, state) {
          return CustomTextFormField(
            controller: state.passwordController,
            hintText: "lbl_password".tr,
            textInputAction: TextInputAction.done,
            textInputType: TextInputType.visiblePassword,
            prefix: Container(
              margin: EdgeInsets.fromLTRB(16.h, 14.v, 8.h, 14.v),
              child: CustomImageView(
                imagePath: ImageConstant.imgProfile,
                height: 28.adaptSize,
                width: 28.adaptSize,
              ),
            ),
            prefixConstraints: BoxConstraints(
              maxHeight: 56.v,
            ),
            suffix: InkWell(
              onTap: () {
                context.read<FrameOneBloc>().add(ChangePasswordVisibilityEvent(
                    value: !state.isShowPassword));
              },
              child: Container(
                margin: EdgeInsets.fromLTRB(30.h, 14.v, 16.h, 14.v),
                child: CustomImageView(
                  imagePath: ImageConstant.imgSearch,
                  height: 28.adaptSize,
                  width: 28.adaptSize,
                ),
              ),
            ),
            suffixConstraints: BoxConstraints(
              maxHeight: 56.v,
            ),
            validator: (value) {
              if (value == null ||
                  (!isValidPassword(value, isRequired: true))) {
                return "err_msg_please_enter_valid_password".tr;
              }
              return null;
            },
            obscureText: state.isShowPassword,
            contentPadding: EdgeInsets.symmetric(vertical: 19.v),
          );
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildLogin(BuildContext context) {
    return CustomElevatedButton(
      text: "lbl_login".tr,
      margin: EdgeInsets.only(
        left: 29.h,
        right: 34.h,
      ),
      buttonStyle: CustomButtonStyles.fillPrimaryTL28,
      buttonTextStyle: CustomTextStyles.titleMediumOnPrimaryContainer,
    );
  }

  /// Section Widget
  Widget _buildFrame(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 27.h,
        right: 34.h,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Padding(
            padding: EdgeInsets.only(
              top: 8.v,
              bottom: 7.v,
            ),
            child: SizedBox(
              width: 162.h,
              child: Divider(),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 24.h),
            child: Text(
              "lbl_or".tr,
              style: theme.textTheme.bodyMedium,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              top: 8.v,
              bottom: 7.v,
            ),
            child: SizedBox(
              width: 163.h,
              child: Divider(
                indent: 24.h,
              ),
            ),
          )
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildGoogle(BuildContext context) {
    return CustomElevatedButton(
      width: 174.h,
      text: "lbl_google".tr,
      leftIcon: Container(
        margin: EdgeInsets.only(right: 8.h),
        child: CustomImageView(
          imagePath: ImageConstant.img20221203181232googleglogo,
          height: 24.adaptSize,
          width: 24.adaptSize,
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildFacebook(BuildContext context) {
    return CustomElevatedButton(
      width: 174.h,
      text: "lbl_facebook".tr,
      margin: EdgeInsets.only(left: 16.h),
      leftIcon: Container(
        margin: EdgeInsets.only(right: 8.h),
        child: CustomImageView(
          imagePath: ImageConstant.imgFacebook,
          height: 24.adaptSize,
          width: 24.adaptSize,
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildGoogleFacebook(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 29.h,
        right: 34.h,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [_buildGoogle(context), _buildFacebook(context)],
      ),
    );
  }

  /// Section Widget
  Widget _buildFrame1(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 117.h,
        right: 117.h,
        bottom: 23.v,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "lbl_terms_of_use".tr,
            style: theme.textTheme.bodyMedium,
          ),
          Padding(
            padding: EdgeInsets.only(left: 17.h),
            child: Text(
              "lbl".tr,
              style: theme.textTheme.bodyMedium,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 17.h),
            child: Text(
              "lbl_privacy_policy".tr,
              style: theme.textTheme.bodyMedium,
            ),
          )
        ],
      ),
    );
  }
}
