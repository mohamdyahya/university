import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../constants.dart';
import '../screans/Main/MainPage.dart';
import '../screans/app_about/app_info_screen.dart';
import '../screans/my_user/my_user_screen.dart';
import '../screans/notification/notification_screen.dart';
import '../screans/reservations/my_reservations_screen.dart';

class Navigation extends StatefulWidget {
  @override
  _NavigationState createState() => _NavigationState();
}

class _NavigationState extends State<Navigation> {
  int index = 0;
  final screens = [
    Main_Page(),
    AppInfoScrean(),
    NotificationScrean(),
    AppInfoScrean(),
    MyUser(),
  ];

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl, // set this property
      child: Scaffold(
          body: screens[index],
          bottomNavigationBar: NavigationBarTheme(
            data: NavigationBarThemeData(
                indicatorColor: kPrimaryColor,
                labelTextStyle: MaterialStateProperty.all(
                    TextStyle(fontSize: 14, color: kTextWhite))),
            child: NavigationBar(
              height: 80,
              backgroundColor: kTextColor,
              labelBehavior: NavigationDestinationLabelBehavior.onlyShowSelected,
              selectedIndex: index,
              animationDuration: Duration(milliseconds: 800),
              onDestinationSelected: (index) =>
                  setState(() => this.index = index),
              destinations: [
                NavigationDestination(
                  icon: SvgPicture.asset(
                    "assets/icons/home_strock.svg",
                    color: kTextWhite,
                  ),
                  label: 'الرئيسية',
                  selectedIcon: SvgPicture.asset(
                    "assets/icons/home.svg",
                    color: kTextColor,
                    width: 24,
                    height: 24,
                  ),
                ),
                NavigationDestination(
                  icon: SvgPicture.asset(
                    "assets/icons/taxi_strock.svg",
                    color: kTextWhite,
                  ),
                  label: 'المواصلات',
                  selectedIcon: SvgPicture.asset(
                    "assets/icons/taxi.svg",
                    color: kTextColor,
                  ),
                ),
                NavigationDestination(
                  icon: SvgPicture.asset(
                    "assets/icons/building_strock.svg",
                    color: kTextWhite,
                  ),
                  label: 'العقارات',
                  selectedIcon: SvgPicture.asset(
                    "assets/icons/building.svg",
                    color: kTextColor,
                  ),
                ),
                NavigationDestination(
                  icon: SvgPicture.asset(
                    "assets/icons/card_strock.svg",
                    color: kTextWhite,
                  ),
                  label: 'حجوزاتي',
                  selectedIcon: SvgPicture.asset(
                    "assets/icons/card.svg",
                    color: kTextColor,
                  ),
                ),
                NavigationDestination(
                  icon: SvgPicture.asset(
                    "assets/icons/user_strock.svg",
                    color: kTextWhite,
                  ),
                  label: 'حسابي',
                  selectedIcon: SvgPicture.asset(
                    "assets/icons/user.svg",
                    color: kTextColor,
                    width: 24,
                    height: 24,
                  ),
                ),
              ],
            ),
          )),
    );
  }
}
