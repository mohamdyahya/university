import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../constants.dart';
import '../../size_config.dart';
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

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
        appBar: AppBar(
          actions: [
            IconButton(onPressed: (){}, icon: SvgPicture.asset('assets/icons/bell.svg',width: getProportionateScreenWidth(20),))
          ],
          titleSpacing: 10,
          titleTextStyle: TextStyle(height: 1),
          toolbarHeight: getProportionateScreenHeight(60),
          leading: Container(
            padding: EdgeInsets.only(right: 10),
            child: CircleAvatar(
              radius: getProportionateScreenHeight(24),
              backgroundImage: NetworkImage(
                  'https://womenss.net/wp-content/uploads/2021/01/8774-2.jpg'),
            ),
          ),
          title: Container(
            // height: getProportionateScreenHeight(70),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(child: Text('صباح الخير 2',style: TextStyle(color:kTextColor ,fontSize: getProportionateScreenWidth(14),),)),
              Text('محمد نور',style: TextStyle(color:kTextColor  ,fontSize: getProportionateScreenWidth(14)),),
            ],),
          )
        ),
        body: Directionality(
          // add this
          textDirection: TextDirection.rtl, // set this property
          child: body(),
        ));
  }
}
