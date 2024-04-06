import 'package:karthick_mugunthan_s_s_application3/presentation/reg_page/reg_page.dart';
import 'package:karthick_mugunthan_s_s_application3/widgets/custom_bottom_bar.dart';
import 'models/reg_container_model.dart';
import 'package:flutter/material.dart';
import 'package:karthick_mugunthan_s_s_application3/core/app_export.dart';
import 'bloc/reg_container_bloc.dart';

// ignore_for_file: must_be_immutable
class RegContainerScreen extends StatelessWidget {
  RegContainerScreen({Key? key})
      : super(
          key: key,
        );

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  static Widget builder(BuildContext context) {
    return BlocProvider<RegContainerBloc>(
      create: (context) => RegContainerBloc(RegContainerState(
        regContainerModelObj: RegContainerModel(),
      ))
        ..add(RegContainerInitialEvent()),
      child: RegContainerScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<RegContainerBloc, RegContainerState>(
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            body: Navigator(
              key: navigatorKey,
              initialRoute: AppRoutes.regPage,
              onGenerateRoute: (routeSetting) => PageRouteBuilder(
                pageBuilder: (ctx, ani, ani1) =>
                    getCurrentPage(context, routeSetting.name!),
                transitionDuration: Duration(seconds: 0),
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
