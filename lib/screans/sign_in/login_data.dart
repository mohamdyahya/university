import 'dart:convert';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:university/screans/login_success/login_success_screen.dart';
import 'package:http/http.dart' as http;
import 'package:university/config.dart';
import 'dart:async';

import '../../constants.dart';

bool erroremail = false;

Future<bool> loginUsers(
    String use_email, String use_pwd, BuildContext context) async {
  String url = path_api +
      "login/?email=" +
      use_email +
      "&password=" +
      use_pwd +
      "&general_token=" +
      token;
  Uri myUri = Uri.parse(url);
  http.Response response = await http.get(myUri);
  if (json.decode(response.body)["Title"] == "Login Successful") {
    Map arr = json.decode(response.body)["Message"];
    SharedPreferences sh = await SharedPreferences.getInstance();
    sh.setString(G_use_id, arr["user_id"]);
    sh.setString(G_use_name, arr["user_name"]);
    sh.setString(G_use_email, arr["email_address"]);
    sh.setString(G_use_token, arr["user_token"]);
    sh.setString(G_use_image, arr["profile_picture"]);
    print(sh.getString(G_use_id));
    //sh.setString(G_use_mobile, arr["use_mobile"]);

    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => LoginSuccessScreen()));

    print("success");
    return true;
  } else {
    erroremail = true;
    print("Failer");
    return false;
  }
}
