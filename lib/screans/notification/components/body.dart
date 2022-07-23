import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../../../config.dart';
import '../../../constants.dart';
import '../../../size_config.dart';
import "package:http/http.dart" as http;
import "dart:convert";

class Body extends StatefulWidget {
  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  List Noti = [];

  Future getNoti() async {
    SharedPreferences sh = await SharedPreferences.getInstance();
    String id = sh.getString(G_use_id);
    String user_token = sh.getString(G_use_token);
    var url = path_api +
        "notification/?id=" +
        id +
        "&user_token=" +
        user_token;
    Uri myUri = Uri.parse(url);
    final response = await http.get(myUri);
    var responsebody = json.decode(response.body)['Message'];
    setState(() {
      Noti.addAll(responsebody);
    });
    print(Noti.length);
   // print (Noti);

  }



  @override
  void initState() {
    getNoti();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: SizedBox(
      width: double.infinity,
      child: ListView.builder(
        itemCount: Noti.length,
        itemBuilder: (context, i) {
          if (Noti.isNotEmpty){
          return   Container(
            margin: EdgeInsets.only(top: 16, left: 16, right: 16),
            padding: EdgeInsets.all(16),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: kTextWhite,
              boxShadow: [
                BoxShadow(
                  offset: Offset(0, 0),
                  blurRadius: 10,
                  color: kShadowColor,
                )
              ],
            ),
            child: Column(children: [
              Container(
                alignment: Alignment.topRight,
                child: Text(
                    "${Noti[i]['title' ]}", style: primaryText),
              ),
              Container(
                alignment: Alignment.centerRight,
                child: Text(
                  "${Noti[i]['description']}",
                  textAlign: TextAlign.justify,
                ),
              ),
              Container(
                alignment: Alignment.bottomLeft,
                child: Text(
                  "${Noti[i]['date_time']}",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    fontSize: getProportionateScreenWidth(10),
                  ),
                ),
              ),
            ]),
          ); }
          else{
            return Center(child: CircularProgressIndicator());
          }
        },
      ),
    ));
  }
}
