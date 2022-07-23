import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../../../components/default_button.dart';
import '../../../config.dart';
import '../../../constants.dart';
import '../../../size_config.dart';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';
import 'package:flutter_launch/flutter_launch.dart';
import 'package:url_launcher/url_launcher.dart';



class Body extends StatefulWidget {
  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  List getTripInfolist = [];

  Future getToRegion() async {
    SharedPreferences sh = await SharedPreferences.getInstance();
    String id = sh.getString(G_use_id);
    String userToken = sh.getString(G_use_token);
    var baseUrl =
        path_api + "car/trip_info/?id=" + id + "&user_token=" + userToken;

    Uri myUri = Uri.parse(baseUrl);
    print("url" + baseUrl);
    http.Response response = await http.get(myUri);
    if (json.decode(response.body)["Title"] == "Success") {
      var arr = json.decode(response.body)["Message"];
      setState(() {
        getTripInfolist.addAll(arr);
      });
      print("success");
      return true;
    } else {
      print("Failer");
      return false;
    }
  }
  
  bool err = false;
  String msgErr = '';
  void whatsAppOpen() async {
    print('pppppppppppppppppppp');
    bool whatsapp = await FlutterLaunch.hasApp(name: "whatsapp");

    if (whatsapp) {
      await FlutterLaunch.launchWhatsapp(
          phone: "05315084595", message: "Hello, flutter_launch");
    } else {
      setState(() {
        err = false;
        msgErr = '';
        print('qqqqqqqqqqqqqqqqqq');
      });
    }
  }



  @override
  void initState() {
    super.initState();
    getToRegion();
    whatsAppOpen();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: SizedBox(
      width: double.infinity,
      child: SingleChildScrollView(
        child: Padding(
          padding:
              EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
          child: Column(
            children: [
              SizedBox(height: SizeConfig.screenHeight * 0.02),
              Container(
                height: getProportionateScreenHeight(300),
                width: getProportionateScreenWidth(300),
                decoration: BoxDecoration(
                    color: kTextWhite,
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: [
                      BoxShadow(
                        offset: Offset(0, 0),
                        blurRadius: 10,
                        color: kShadowColor,
                      )
                    ]),
                child: Column(
                  children: [
                    SizedBox(height: SizeConfig.screenHeight * 0.05),
                    SvgPicture.asset(
                        getTripInfolist.isNotEmpty ? "assets/icons/done.svg" : "assets/icons/donet.svg" ,
                        height: getProportionateScreenHeight(160),
                        width: getProportionateScreenWidth(160),
                        alignment: Alignment.center),
                    SizedBox(height: SizeConfig.screenHeight * 0.02),
                    Text(
                      getTripInfolist.isNotEmpty ? "تم الحجز بنجاح " : "قم بالحجز على رحلة",
                      style: headingStyleSecond,
                    ),
                    Text(
                      getTripInfolist.isNotEmpty ? "على رحلة يوم غد " : "اذهب إلى صفحة المواصلات",
                      style: TextStyle(color: kTextColor),
                    ),
                  ],
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                height: getProportionateScreenHeight(250),
                child: ListView.builder(
                    scrollDirection: Axis.vertical,
                    itemCount: getTripInfolist.length,
                    itemBuilder: (context, i) {
                      return Container(
                        child: Column(
                          children: [
                            SizedBox(height: SizeConfig.screenHeight * 0.06),
                            Row(children: [
                              Text(
                                "مكان الانطلاق ",
                                textAlign: TextAlign.center,
                              ),
                              Spacer(),
                              Text(
                                "${getTripInfolist[i]['from_region']}",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: kTextColor),
                              ),
                            ]),
                            Divider(
                              color: kTextGray,
                              height: SizeConfig.screenHeight * 0.02,
                              thickness: 0.5,
                            ),
                            Row(children: [
                              Text(
                                "وقت الانطلاق ",
                                textAlign: TextAlign.center,
                              ),
                              Spacer(),
                              Text(
                                "${getTripInfolist[i]['time']}",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: kTextColor),
                              ),
                            ]),
                            Divider(
                              color: kTextGray,
                              height: SizeConfig.screenHeight * 0.02,
                              thickness: 0.5,
                            ),
                            Row(children: [
                              Text(
                                "الوجهة",
                                textAlign: TextAlign.center,
                              ),
                              Spacer(),
                              Text(
                                "${getTripInfolist[i]['to_region']}",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: kTextColor),
                              ),
                            ]),
                            Divider(
                              color: kTextGray,
                              height: SizeConfig.screenHeight * 0.02,
                              thickness: 0.5,
                            ),
                            Row(children: [
                              Text(
                                "التكلفة ",
                                textAlign: TextAlign.center,
                              ),
                              Spacer(),
                              Text(
                                "${getTripInfolist[i]['price']}",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: kTextColor),
                              ),
                            ]),
                            Divider(
                              color: kTextGray,
                              height: SizeConfig.screenHeight * 0.02,
                              thickness: 0.5,
                            ),
                            SizedBox(height: SizeConfig.screenHeight * 0.04),
                          ],
                        ),
                      );
                    }),
              ),
              DefaultButton(
                text: "للتواصل مع السائق",
                press: () {

                    whatsAppOpen();


                },
              ),
              SizedBox(height: SizeConfig.screenHeight * 0.01),
            ],
          ),
        ),
      ),
    ));
  }
}
