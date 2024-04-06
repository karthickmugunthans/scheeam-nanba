import 'package:flutter/material.dart';
import 'package:karthick_mugunthan_s_s_application3/core/app_export.dart';

class CustomBottomBar extends StatefulWidget {
  CustomBottomBar({this.onChanged});

  Function(BottomBarEnum)? onChanged;

  @override
  CustomBottomBarState createState() => CustomBottomBarState();
}

class CustomBottomBarState extends State<CustomBottomBar> {
  int selectedIndex = 0;

  List<BottomMenuModel> bottomMenuList = [
    BottomMenuModel(
      icon: ImageConstant.imgChatbotMessage,
      activeIcon: ImageConstant.imgChatbotMessage,
      type: BottomBarEnum.Chatbotmessage,
    ),
    BottomMenuModel(
      icon: ImageConstant.imgUntitled1Recovered02,
      activeIcon: ImageConstant.imgUntitled1Recovered02,
      type: BottomBarEnum.Untitled1recovered02,
      isCircle: true,
    ),
    BottomMenuModel(
      icon: ImageConstant.imgUntitled1Recovered04,
      activeIcon: ImageConstant.imgUntitled1Recovered04,
      type: BottomBarEnum.Untitled1recovered04,
    )
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100.v,
      child: BottomNavigationBar(
        backgroundColor: Colors.transparent,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        selectedFontSize: 0,
        elevation: 0,
        currentIndex: selectedIndex,
        type: BottomNavigationBarType.fixed,
        items: List.generate(bottomMenuList.length, (index) {
          if (bottomMenuList[index].isCircle) {
            return BottomNavigationBarItem(
              icon: SizedBox(
                height: 85.v,
                width: 81.h,
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    Align(
                      alignment: Alignment.center,
                      child: Container(
                        height: 85.v,
                        width: 81.h,
                        decoration: BoxDecoration(
                          color: theme.colorScheme.secondaryContainer,
                          borderRadius: BorderRadius.circular(
                            42.h,
                          ),
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.center,
                      child: Container(
                        height: 68.adaptSize,
                        width: 68.adaptSize,
                        margin: EdgeInsets.fromLTRB(6.h, 10.v, 7.h, 7.v),
                        decoration: BoxDecoration(
                          color: appTheme.purple40001,
                          borderRadius: BorderRadius.circular(
                            34.h,
                          ),
                        ),
                      ),
                    ),
                    CustomImageView(
                      imagePath: bottomMenuList[index].icon,
                      height: 44.v,
                      width: 57.h,
                      alignment: Alignment.bottomCenter,
                      margin: EdgeInsets.fromLTRB(13.h, 23.v, 11.h, 18.v),
                    ),
                  ],
                ),
              ),
              label: '',
            );
          }
          return BottomNavigationBarItem(
            icon: SizedBox(
              height: 85.v,
              width: 81.h,
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Align(
                    alignment: Alignment.center,
                    child: Container(
                      height: 85.v,
                      width: 81.h,
                      decoration: BoxDecoration(
                        color: theme.colorScheme.secondaryContainer,
                        borderRadius: BorderRadius.circular(
                          42.h,
                        ),
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: Container(
                      height: 68.adaptSize,
                      width: 68.adaptSize,
                      margin: EdgeInsets.fromLTRB(6.h, 10.v, 7.h, 7.v),
                      decoration: BoxDecoration(
                        color: appTheme.purple40001,
                        borderRadius: BorderRadius.circular(
                          34.h,
                        ),
                      ),
                    ),
                  ),
                  CustomImageView(
                    imagePath: bottomMenuList[index].icon,
                    height: 44.v,
                    width: 57.h,
                    alignment: Alignment.bottomCenter,
                    margin: EdgeInsets.fromLTRB(13.h, 23.v, 11.h, 18.v),
                  ),
                ],
              ),
            ),
            activeIcon: SizedBox(
              height: 68.adaptSize,
              width: 68.adaptSize,
              child: Stack(
                alignment: Alignment.bottomCenter,
                children: [
                  Align(
                    alignment: Alignment.center,
                    child: Container(
                      decoration: AppDecoration.fillSecondaryContainer.copyWith(
                        borderRadius: BorderRadiusStyle.circleBorder34,
                      ),
                      child: Container(
                        height: 62.adaptSize,
                        width: 62.adaptSize,
                        margin: EdgeInsets.all(3.h),
                        decoration: BoxDecoration(
                          color: appTheme.purple40001,
                          borderRadius: BorderRadius.circular(
                            31.h,
                          ),
                        ),
                      ),
                    ),
                  ),
                  CustomImageView(
                    imagePath: bottomMenuList[index].activeIcon,
                    height: 50.v,
                    width: 44.h,
                    alignment: Alignment.bottomCenter,
                    margin: EdgeInsets.fromLTRB(12.h, 12.v, 12.h, 6.v),
                  ),
                ],
              ),
            ),
            label: '',
          );
        }),
        onTap: (index) {
          selectedIndex = index;
          widget.onChanged?.call(bottomMenuList[index].type);
          setState(() {});
        },
      ),
    );
  }
}

enum BottomBarEnum {
  Chatbotmessage,
  Untitled1recovered02,
  Untitled1recovered04,
}

class BottomMenuModel {
  BottomMenuModel({
    required this.icon,
    required this.activeIcon,
    required this.type,
    this.isCircle = false,
  });

  String icon;

  String activeIcon;

  BottomBarEnum type;

  bool isCircle;
}

class DefaultWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xffffffff),
      padding: EdgeInsets.all(10),
      child: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Please replace the respective Widget here',
              style: TextStyle(
                fontSize: 18,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
