import 'package:flutter/material.dart';
import 'package:university/constants.dart';
import '../../components/navigation_bar.dart';
import '../../size_config.dart';
import 'components/body.dart';


class MyReservations extends StatefulWidget {
  static String routeName = "/reservations";

  @override
  State<MyReservations> createState() => _MyReservationsState();
}

class _MyReservationsState extends State<MyReservations> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
        appBar: AppBar(
          toolbarHeight: getProportionateScreenHeight(80),
          centerTitle: true,
          title:Text("حجوزاتي",style: TextStyle(color: kTextColor),),
        ),
        body: Directionality(
          // add this
          textDirection: TextDirection.rtl, // set this property
          child: Body(),
        ),
      //bottomNavigationBar:
    //  Directionality(textDirection: TextDirection.rtl, child: Navigation()),

    );
  }
}
