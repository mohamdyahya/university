import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:university/constants.dart';
import '../../components/coustom_bottom_nav_bar.dart';
import '../../components/navigation_bar.dart';
import '../../enums.dart';
import '../../size_config.dart';
import 'components/body.dart';

class MyUser extends StatelessWidget {
  static String routeName = "/my_user";

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 100,
        centerTitle: true,
        title: Text(
          "حسابي",
          style: TextStyle(color: Colors.black87),
        ),
      ),
      body: Directionality(
        // add this
        textDirection: TextDirection.rtl, // set this property
        child: Body(),
      ),
    );
  }
}
