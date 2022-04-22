import 'package:flutter/material.dart';
import '../../components/navigation_bar.dart';
import '../../size_config.dart';
import 'components/body.dart';


class NotificationScrean extends StatelessWidget {
  static String routeName = "/notification";

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
        appBar: AppBar(
          toolbarHeight: 100,
          centerTitle: true,
          title:Text("الإشعارات",style: TextStyle(color: Colors.black87),),
        ),
        body: Directionality(
          // add this
          textDirection: TextDirection.rtl, // set this property
          child: Body(),
        ),
    );
  }
}
