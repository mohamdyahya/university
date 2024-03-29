
// We use name route
// All our routes will be available here
import 'package:flutter/cupertino.dart';
import 'package:university/screans/Main/MainPage.dart';
import 'package:university/screans/Poropert_information/property.dart';
import 'package:university/screans/app_about/app_info_screen.dart';
import 'package:university/screans/forgot_password/forgot_password_screen.dart';
import 'package:university/screans/login_success/login_success_screen.dart';
import 'package:university/screans/notification/notification_screen.dart';
import 'package:university/screans/reservations/my_reservations_screen.dart';
import 'package:university/screans/sign_in/sign_in_screen.dart';
import 'package:university/screans/sign_up/sign_up_screen.dart';
import 'package:university/screans/splash/splash_screen.dart';
import 'package:university/screans/university/uninersity.dart';

final Map<String, WidgetBuilder> routes = {
  SplashScreen.routeName: (context) => SplashScreen(),
  SignInScreen.routeName: (context) => SignInScreen(),
  ForgotPasswordScreen.routeName: (context) => ForgotPasswordScreen(),
  LoginSuccessScreen.routeName: (context) => LoginSuccessScreen(),
  SignUpScreen.routeName: (context) => SignUpScreen(),
  AppInfoScrean.routeName: (context) => AppInfoScrean(),
  Main_Page.routeName: (context) => Main_Page(),
  NotificationScrean.routeName: (context) => NotificationScrean(),
  MyReservations.routeName: (context) => MyReservations(),
  NotificationScrean.routeName: (context) => NotificationScrean(),
  University.routeName: (context) => University(),




};
