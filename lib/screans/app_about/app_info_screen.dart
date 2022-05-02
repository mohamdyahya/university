import 'package:flutter/material.dart';
import 'package:university/constants.dart';
import '../../components/navigation_bar.dart';
import '../../size_config.dart';
import 'components/body.dart';


class AppInfoScrean extends StatelessWidget {
  static String routeName = "/app_info";

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
        appBar: AppBar(
          toolbarHeight: getProportionateScreenHeight(80),
          centerTitle: true,
          title:Text("حول التطبيق",style: TextStyle(color: kTextColor),),
        ),
        body: Directionality(
          // add this
          textDirection: TextDirection.rtl, // set this property
          child: Body(),
        ),
    );
  }
}
