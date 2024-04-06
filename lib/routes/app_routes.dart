import 'package:flutter/material.dart';
import '../presentation/frame_one_screen/frame_one_screen.dart';
import '../presentation/reg_container_screen/reg_container_screen.dart';
import '../presentation/reg_one_screen/reg_one_screen.dart';
import '../presentation/app_navigation_screen/app_navigation_screen.dart';

class AppRoutes {
  static const String frameOneScreen = '/frame_one_screen';

  static const String regContainerScreen = '/reg_container_screen';

  static const String regPage = '/reg_page';

  static const String regOneScreen = '/reg_one_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static const String initialRoute = '/initialRoute';

  static Map<String, WidgetBuilder> get routes => {
        frameOneScreen: FrameOneScreen.builder,
        regContainerScreen: RegContainerScreen.builder,
        regOneScreen: RegOneScreen.builder,
        appNavigationScreen: AppNavigationScreen.builder,
        initialRoute: FrameOneScreen.builder
      };
}
