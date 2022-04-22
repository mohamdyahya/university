import 'package:flutter/material.dart';
import 'package:university/constants.dart';
import 'package:university/routes.dart';
import 'package:university/screans/app_about/app_info_screen.dart';
import 'package:university/screans/my_user/my_user_screen.dart';
import 'package:university/screans/notification/notification_screen.dart';
import 'package:university/screans/reservations/my_reservations_screen.dart';
import 'package:university/screans/sign_up/sign_up_screen.dart';
import 'package:university/screans/splash/splash_screen.dart';

import 'components/navigation_bar.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
        fontFamily: "Helvetica",
        appBarTheme: AppBarTheme(
          color: Colors.white,
          elevation: 0,
          brightness: Brightness.light,
          iconTheme: IconThemeData(color: Colors.black),
        ),
        textTheme: TextTheme(
          bodyText1: TextStyle(color: kTextColor),
          bodyText2: TextStyle(color: kTextColor),
        ),
        //hello i am thunder and wellcom to my project  

        // This is the theme of your application.
        // 
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
       home: Navigation(),
   //   initialRoute: MyReservations.routeName,
  //    routes: routes,
    );
  }
}
