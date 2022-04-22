
// We use name route
// All our routes will be available here
import 'package:flutter/cupertino.dart';
import 'package:university/screans/Main/MainPage.dart';
import 'package:university/screans/app_about/app_info_screen.dart';
import 'package:university/screans/forgot_password/forgot_password_screen.dart';
import 'package:university/screans/login_success/login_success_screen.dart';

final Map<String, WidgetBuilder> routes = {
  SplashScreen.routeName: (context) => SplashScreen(),
  SignInScreen.routeName: (context) => SignInScreen(),
  ForgotPasswordScreen.routeName: (context) => ForgotPasswordScreen(),
  LoginSuccessScreen.routeName: (context) => LoginSuccessScreen(),
  SignUpScreen.routeName: (context) => SignUpScreen(),
  AppInfoScrean.routeName: (context) => AppInfoScrean(),
  MyReservations.routeName: (context) => MyReservations(),


};
