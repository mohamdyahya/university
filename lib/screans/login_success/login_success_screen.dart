import 'package:flutter/material.dart';
import 'components/body.dart';

class LoginSuccessScreen extends StatelessWidget {
  static String routeName = "/login_success";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: SizedBox(),
        title: Text(""),
      ),
      body:Directionality(// add this
        textDirection: TextDirection.rtl, // set this property
        child: Body(),
      ));
  }
}
