import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:university/constants.dart';
import 'package:university/screans/sign_in/login_data.dart';
import 'package:university/routes.dart';
import 'package:university/screans/Poropert_information/property.dart';
import 'package:university/screans/app_about/app_info_screen.dart';
import 'package:university/screans/my_user/my_user_screen.dart';
import 'package:university/screans/notification/notification_screen.dart';
import 'package:university/screans/register_all/resgister_all_screen.dart';
import 'package:university/screans/reservations/my_reservations_screen.dart';
import 'package:university/screans/sign_up/sign_up_screen.dart';
import 'package:university/screans/splash/splash_screen.dart';
import 'package:university/screans/university/uninersity.dart';

import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';

import 'components/navigation_bar.dart';
import 'config.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}
String ww = '';
class _MyAppState extends State<MyApp> {
  Future getIdUser() async {
    SharedPreferences sh = await SharedPreferences.getInstance();
    ww = sh.getString(doneEnter);
    print(ww + 'rrrrrrrrrrrrrr');
      setState(() {

      });
      print('ttttttttttttttttttttttttttttttt');
  }
  @override
  void initState() {
    getIdUser();
    super.initState();
  }
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
      home:  ww.isEmpty?University(): Navigation(),
    //  initialRoute: University.routeName,
     // routes: routes,
    );
  }
}
