import 'dart:convert';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:university/screans/login_success/login_success_screen.dart';
import 'package:http/http.dart' as http;
import 'package:university/config.dart';
import 'dart:async';
import '../../constants.dart';

Future<bool> signUpUsers(
    String email,
    String password,
    String first_name,
    String last_name,
    String password_confirmation,
    String phone_number,
    BuildContext context) async {
  String url = path_api +
      "register/?email=" +
      email +
      "&first_name=" +
      first_name +
      "&last_name=" +
      last_name +
      "&password=" +
      password +
      "&password_confirmation=" +
      password_confirmation +
      "&general_token=" +
      token +
      "&phone_number=" +
      phone_number;

  Uri myUri = Uri.parse(url);
  http.Response response = await http.get(myUri);
  if (json.decode(response.body)["Title"] == "Register Successful") {
    Map arr = json.decode(response.body)["Message"];
    print(arr);
    print(url);
    SharedPreferences sh = await SharedPreferences.getInstance();
    sh.setString(G_use_id, arr["user_id"]);
    sh.setString(G_use_name, arr["user_name"]);
    sh.setString(G_use_email, arr["email_address"]);
    sh.setString(G_use_token, arr["user_token"]);
    sh.setString(G_use_image, arr["profile_picture"]);

    //sh.setString(G_use_mobile, arr["use_mobile"]);

    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => LoginSuccessScreen()));

    print("success");
    return true;
  } else {
    print("Failer");
    return false;
  }
}
