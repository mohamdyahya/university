import 'package:flutter/material.dart';
import '../../size_config.dart';
import 'components/main.dart';
class Unversity extends StatelessWidget {
  static String routeName = "/university";
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
        body: Directionality(
          textDirection: TextDirection.rtl,
          child: Body(),
        ));
  }
}
