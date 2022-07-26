import 'package:flutter/material.dart';
import 'package:university/constants.dart';
import '../../components/navigation_bar.dart';
import '../../size_config.dart';
import 'components/body.dart';


class NotificationScrean extends StatefulWidget {
  static String routeName = "/notification";

  @override
  State<NotificationScrean> createState() => _NotificationScreanState();
}

class _NotificationScreanState extends State<NotificationScrean> {

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: getProportionateScreenHeight(80),
        centerTitle: true,
        title: Text(
          "الإشعارات",
          style: TextStyle(color: kTextColor),
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
