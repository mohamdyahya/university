import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../../config.dart';
import '../../constants.dart';
import '../../size_config.dart';
import '../notification/notification_screen.dart';
import 'Components/body.dart';

// class MyApp extends StatefulWidget {
//   @override
//   State<MyApp> createState() => _MyAppState();
// }
//
// class _MyAppState extends State<MyApp> {
//   @override
//   Widget build(BuildContext context) {
//     return const MaterialApp(
//       debugShowCheckedModeBanner: false,
//       // home:Text("thunder");
//       home: Main_Page(),
//     );
//   }
// }

class Main_Page extends StatefulWidget {
  static String routeName = "/main_page";

  @override
  State<Main_Page> createState() => _Main_PageState();
}




class _Main_PageState extends State<Main_Page> {
  int selectedindex = 0;


   String nameuser = '';
  Future getName() async {
    SharedPreferences sh = await SharedPreferences.getInstance();
    setState(() {
      nameuser = sh.getString(G_use_name);
    });
    print('obsssssssssject');
    print(nameuser);
  }

  @override
  void initState() {
    super.initState();
    getName();
  }



  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
        appBar: AppBar(
            actions: [
              IconButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => NotificationScrean()),
                    );
                  },
                  icon: SvgPicture.asset(
                    'assets/icons/bell.svg',
                    width: getProportionateScreenWidth(20),
                  ))
            ],
            titleSpacing: 10,
            titleTextStyle: TextStyle(height: 1),
            toolbarHeight: getProportionateScreenHeight(60),

            leading: Container(
              padding: EdgeInsets.only(right: 10),
              child: CircleAvatar(
                radius: getProportionateScreenHeight(24),
                backgroundImage: NetworkImage(
                    'https://b11f.com/img/icon/nour.jpg'),
              ),
            ),
            title: Container(
              // height: getProportionateScreenHeight(70),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                      child: Text(
                    'أهلًا وسهلًا',
                    style: TextStyle(
                      color: kTextColor,
                      fontSize: getProportionateScreenWidth(12),
                      fontFamily: 'Helvetica',
                    ),
                  )),
                  Text(

                    nameuser,
                    style: TextStyle(
                        color: kTextColor,
                        fontFamily: 'Helvetica',
                        fontSize: getProportionateScreenWidth(12)),

                  ),
                ],
              ),
            )),
        body: Directionality(
          // add this
          textDirection: TextDirection.rtl, // set this property
          child: body(),
        ));
  }
}
