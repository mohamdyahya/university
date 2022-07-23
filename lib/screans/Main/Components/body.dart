import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter_svg/svg.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:university/config.dart';
import 'package:university/size_config.dart';
import '../../../constants.dart';

import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';

import '../../notification/notification_screen.dart';
import '../../register_all/resgister_all_screen.dart';
import '../../search/search.dart';

int activeIndex = 0;

class body extends StatefulWidget {
  @override
  State<body> createState() => _bodyState();
}

class _bodyState extends State<body> {
  List ListAdd = [];
  List ListProp = [];
  List ListLastProp = [];
  List ListLogo = [];

  Future getAdd() async {
    SharedPreferences sh = await SharedPreferences.getInstance();
    String id = sh.getString(G_use_id);
    String userToken = sh.getString(G_use_token);
    var url = path_api + "home/ads/?id=" + id + "&user_token=" + userToken;
    Uri myUri = Uri.parse(url);
    http.Response response = await http.get(myUri);
    if (json.decode(response.body)["Title"] == "Success") {
      var arr = json.decode(response.body)["Message"];
      setState(() {
        ListAdd.addAll(arr);
      });
      print("success");
      return true;
    } else {
      print("Failer");
      return false;
    }
  }

  Future getProp() async {
    SharedPreferences sh = await SharedPreferences.getInstance();
    String id = sh.getString(G_use_id);
    String userToken = sh.getString(G_use_token);
    var url =
        path_api + "home/property_type/?id=" + id + "&user_token=" + userToken;
    Uri myUri = Uri.parse(url);
    http.Response response = await http.get(myUri);
    if (json.decode(response.body)["Title"] == "Success") {
      var arr = json.decode(response.body)["Message"];
      setState(() {
        ListProp.addAll(arr);
      });
      print("success");
      return true;
    } else {
      print("Failer");
      return false;
    }
  }

  Future getLastProp() async {
    SharedPreferences sh = await SharedPreferences.getInstance();
    String id = sh.getString(G_use_id);
    String userToken = sh.getString(G_use_token);
    var url =
        path_api + "home/last_property/?id=" + id + "&user_token=" + userToken;
    Uri myUri = Uri.parse(url);
    http.Response response = await http.get(myUri);
    if (json.decode(response.body)["Title"] == "Success") {
      var arr = json.decode(response.body)["Message"];
      setState(() {
        ListLastProp.addAll(arr);
      });
      print("success");
      return true;
    } else {
      print("Failer");
      return false;
    }
  }

  Future getLogo() async {
    SharedPreferences sh = await SharedPreferences.getInstance();
    String id = sh.getString(G_use_id);
    String userToken = sh.getString(G_use_token);
    var url =
        path_api + "home/logos/?id=" + id + "&user_token=" + userToken;
    Uri myUri = Uri.parse(url);
    http.Response response = await http.get(myUri);
    if (json.decode(response.body)["Title"] == "Success") {
      var arr = json.decode(response.body)["Message"];
      setState(() {
        ListLogo.addAll(arr);
      });
      print("success");
      return true;
    } else {
      print("Failer");
      return false;
    }
  }

  @override
  void initState() {
    getAdd();
    getProp();
    getLastProp();
    getLogo();
    super.initState();
  }

  Widget buildIndicator() => AnimatedSmoothIndicator(
        activeIndex: activeIndex,
        count: ListAdd.length,
        effect: ExpandingDotsEffect(
            dotWidth: getProportionateScreenWidth(8),
            dotHeight: getProportionateScreenHeight(8),
            dotColor: kTextWhite,
            activeDotColor: kPrimaryColor),
      );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: ListView(
        children: [
          Column(
            children: [
              Container(
                margin: EdgeInsets.only(left: 10, right: 10, bottom: 0),
                child: Column(
                  children: [
                    Stack(
                      children: [
                        CarouselSlider.builder(
                          itemCount: ListAdd.length,
                          options: CarouselOptions(
                              enableInfiniteScroll: false,
                              viewportFraction: 1,
                              enlargeCenterPage: true,
                              height: getProportionateScreenHeight(200),
                              // reverse: true,
                              aspectRatio: 0.5,
                              onPageChanged: (index, reason) {
                                setState(() {
                                  activeIndex = index;
                                });
                              }),
                          itemBuilder: (context, i, id) {
                            if (ListAdd.isNotEmpty) {
                              //for onTap to redirect to another screen
                              return GestureDetector(
                                child: Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(15),
                                  ),
                                  //ClipRRect for image border radius
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(15),
                                    child: Stack(
                                      children: [
                                        Image.network(
                                          "https://${ListAdd[i]['image']}",
                                          width: double.infinity,
                                          fit: BoxFit.fill,
                                        ),
                                        Positioned(
                                          bottom: 30,
                                          child: Container(
                                            color: kPrimaryLightColorOpacity,
                                            width: getProportionateScreenWidth(
                                                400),
                                            child: Text(
                                                "${ListAdd[i]['title']}",
                                                textAlign: TextAlign.center,
                                                style: headingHome),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                onTap: () {
                                  //
                                },
                              );
                            }
                          },
                        ),
                        Positioned(
                          child: buildIndicator(),
                          bottom: 10,
                          left: 140,
                        ),
                      ],
                    ),
                  ],
                ),
              ),

              // Padding(
              //     padding: EdgeInsets.only(top: 10, bottom: 10, left: 10),),
              /*
              Container(
                margin: EdgeInsets.only(
                    top: getProportionateScreenHeight(16),
                    bottom: getProportionateScreenHeight(8)),
                padding:
                    EdgeInsets.only(right: getProportionateScreenWidth(16)),
                alignment: Alignment.bottomRight,
                child: Text('العقارات',
                    textAlign: TextAlign.start, style: headingHome),
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                height: getProportionateScreenHeight(64),
                margin: EdgeInsets.only(right: getProportionateScreenWidth(16)),
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: ListProp.length,
                    itemBuilder: (context, i) {
                      return GestureDetector(
                        child: Column(
                          children: [
                            Container(
                              height: getProportionateScreenHeight(56),
                              width: getProportionateScreenWidth(56),
                              margin: EdgeInsets.only(
                                  left: getProportionateScreenWidth(16)),
                              child: MaterialButton(
                                onPressed: () {},
                                color: kPrimaryLightColor,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Image.network(
                                  "${ListProp[i]['icon']}",
                                  width: getProportionateScreenWidth(56),
                                  height: getProportionateScreenHeight(56),
                                ),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(
                                  left: getProportionateScreenWidth(16)),
                              child: Text(
                                "${ListProp[i]['name']}",
                              ),
                            )
                          ],
                        ),
                      );
                    }),
              )
              */

              Container(
                margin: EdgeInsets.only(
                    top: getProportionateScreenHeight(16),
                    bottom: getProportionateScreenHeight(8)),
                padding:
                    EdgeInsets.only(right: getProportionateScreenWidth(16)),
                alignment: Alignment.bottomRight,
                child: Text('العقارات',
                    textAlign: TextAlign.start, style: headingHome),
              ),
              Container(
                margin: EdgeInsets.only(right: getProportionateScreenWidth(16)),
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      GestureDetector(

                        child: Column(
                          children: [
                            Container(
                              height: getProportionateScreenHeight(56),
                              width: getProportionateScreenWidth(56),
                              margin: EdgeInsets.only(
                                  left: getProportionateScreenWidth(16)),
                              child: MaterialButton(
                                onPressed: () {  },


                                color: kPrimaryLightColor,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Image.network(
                                  'https://b11f.com/img/icon/1.png',
                                  width: getProportionateScreenWidth(56),
                                  height: getProportionateScreenHeight(56),
                                ),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(
                                  left: getProportionateScreenWidth(16)),
                              child: Text(
                                "شقة",
                              ),
                            )
                          ],
                        ),
                      ),
                      GestureDetector(
                        onTap: () {},
                        child: Column(
                          children: [
                            Container(
                              height: getProportionateScreenHeight(56),
                              width: getProportionateScreenWidth(56),
                              margin: EdgeInsets.only(
                                  left: getProportionateScreenWidth(16)),
                              child: MaterialButton(
                                onPressed: () {},
                                color: kPrimaryLightColor,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Image.network(
                                  'https://b11f.com/img/icon/2.png',
                                  width: getProportionateScreenWidth(56),
                                  height: getProportionateScreenHeight(56),
                                ),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(
                                  left: getProportionateScreenWidth(16)),
                              child: Text(
                                "منزل عربي",
                              ),
                            )
                          ],
                        ),
                      ),
                      GestureDetector(
                        child: Column(
                          children: [
                            Container(
                              height: getProportionateScreenHeight(56),
                              width: getProportionateScreenWidth(56),
                              margin: EdgeInsets.only(
                                  left: getProportionateScreenWidth(16)),
                              child: MaterialButton(
                                onPressed: () {},
                                color: kPrimaryLightColor,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Image.network(
                                  'https://b11f.com/img/icon/3.png',
                                  width: getProportionateScreenWidth(56),
                                  height: getProportionateScreenHeight(56),
                                ),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(
                                  left: getProportionateScreenWidth(16)),
                              child: Text(
                                "مزرعة",
                              ),
                            )
                          ],
                        ),
                      ),
                      GestureDetector(
                        child: Column(
                          children: [
                            Container(
                              height: getProportionateScreenHeight(56),
                              width: getProportionateScreenWidth(56),
                              margin: EdgeInsets.only(
                                  left: getProportionateScreenWidth(16)),
                              child: MaterialButton(
                                onPressed: () {},
                                color: kPrimaryLightColor,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Image.network(
                                  'https://b11f.com/img/icon/4.png',
                                  width: getProportionateScreenWidth(56),
                                  height: getProportionateScreenHeight(56),
                                ),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(
                                  left: getProportionateScreenWidth(16)),
                              child: Text(
                                "صالة أفراح",
                              ),
                            )
                          ],
                        ),
                      ),
                      GestureDetector(
                        child: Column(
                          children: [
                            Container(
                              height: getProportionateScreenHeight(56),
                              width: getProportionateScreenWidth(56),
                              margin: EdgeInsets.only(
                                  left: getProportionateScreenWidth(16)),
                              child: MaterialButton(
                                onPressed: () {},
                                color: kPrimaryLightColor,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Image.network(
                                  'https://b11f.com/img/icon/5.png',
                                  width: getProportionateScreenWidth(56),
                                  height: getProportionateScreenHeight(56),
                                ),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(
                                  left: getProportionateScreenWidth(16)),
                              child: Text(
                                "صالة تدريب",
                              ),
                            )
                          ],
                        ),
                      ),
                      GestureDetector(
                        child: Column(
                          children: [
                            Container(
                              height: getProportionateScreenHeight(56),
                              width: getProportionateScreenWidth(56),
                              margin: EdgeInsets.only(
                                  left: getProportionateScreenWidth(16)),
                              child: MaterialButton(
                                onPressed: () {},
                                color: kPrimaryLightColor,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Image.network(
                                  'https://b11f.com/img/icon/6.png',
                                  width: getProportionateScreenWidth(56),
                                  height: getProportionateScreenHeight(56),
                                ),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(
                                  left: getProportionateScreenWidth(16)),
                              child: Text(
                                "أرض زراعية",
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
          Container(
            margin: EdgeInsets.only(
                top: getProportionateScreenHeight(16),
                bottom: getProportionateScreenHeight(16)),
            padding: EdgeInsets.only(right: getProportionateScreenWidth(16)),
            alignment: Alignment.bottomRight,
            child: Text("التسجيل على رحلة  ",
                textAlign: TextAlign.start, style: headingHome),
          ),
          Container(
            margin: EdgeInsets.symmetric(
                horizontal: getProportionateScreenWidth(16)),
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => AllRegister()),
                );
              },
              style: ElevatedButton.styleFrom(
                primary: kTextWhite,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(24),
                ),
              ),
              child: Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      alignment: Alignment.centerRight,
                      height: getProportionateScreenHeight(112),
                      width: getProportionateScreenWidth(136),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: Image.network(
                            'https://images.pexels.com/photos/3847770/pexels-photo-3847770.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940'),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(
                          left: getProportionateScreenWidth(40)),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "تسجيل على رحلة",
                            textAlign: TextAlign.right,
                            style: primaryText,
                          ),
                          Text(
                            "ذهاب واياب  ",
                            textAlign: TextAlign.right,
                            style: primaryText,
                          ),
                        ],
                      ),
                    ),
                    Icon(
                      Icons.arrow_forward_ios_outlined,
                      size: 20,
                      color: kTextColor,
                    ),
                  ],
                ),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: getProportionateScreenHeight(16)),
            padding: EdgeInsets.only(right: getProportionateScreenWidth(16)),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('آخرالعقارات',
                      textAlign: TextAlign.start, style: headingHome),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      'الكل',
                      style: TextStyle(
                          fontSize: getProportionateScreenWidth(18),
                          color: kPrimaryColor,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ]),
          ),
          Container(
            height: getProportionateScreenHeight(120),
            margin: EdgeInsets.symmetric(
                horizontal: getProportionateScreenWidth(8)),
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: ListLastProp.length,
                itemBuilder: (context, i) {
                  return GestureDetector(
                    onTap: () {},
                    child: Container(
                      height: getProportionateScreenHeight(112),
                      padding: EdgeInsets.only(
                          top: getProportionateScreenWidth(4),
                          bottom: getProportionateScreenWidth(4),
                          left: getProportionateScreenWidth(8),
                          right: getProportionateScreenWidth(8)),
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          primary: kTextWhite,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(24),
                          ),
                        ),
                        child: Row(
                          children: [
                            Container(
                              //padding: EdgeInsets.only(left: 20),
                              alignment: Alignment.centerRight,
                              height: getProportionateScreenHeight(104),
                              width: getProportionateScreenWidth(144),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(20),
                                child: Image.network(
                                    "https://${ListLastProp[i]['picture']}"),
                              ),
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  margin: EdgeInsets.only(
                                      right: getProportionateScreenWidth(8),
                                      top: getProportionateScreenHeight(8)),
                                  child: Text(
                                    "${ListLastProp[i]['type']}  ",
                                    textAlign: TextAlign.right,
                                    style: primaryText,
                                  ),
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Container(
                                      margin: EdgeInsets.only(left: 5, right: 10),
                                      padding: EdgeInsets.all(4),
                                      decoration: BoxDecoration(
                                        color: kPrimaryLightColor,
                                        borderRadius: BorderRadius.circular(4),
                                      ),
                                      child: SvgPicture.asset(
                                        "assets/icons/bed.svg",
                                        color: kTextColor,
                                        width: 12,
                                      ),
                                    ),
                                    Text(
                                      "${ListLastProp[i]['room_count']} غرفة ",
                                      textAlign: TextAlign.right,
                                      style: TextStyle(color: kTextColor),
                                    ),
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Container(
                                      margin: EdgeInsets.only(left: 5, right: 10),
                                      padding: EdgeInsets.all(4),
                                      decoration: BoxDecoration(
                                        color: kPrimaryLightColor,
                                        borderRadius: BorderRadius.circular(4),
                                      ),
                                      child: SvgPicture.asset(
                                        "assets/icons/area.svg",
                                        color: kTextColor,
                                        width: 12,
                                      ),
                                    ),
                                    Text(
                                      "${ListLastProp[i]['space']} متر",
                                      textAlign: TextAlign.right,
                                      style: TextStyle(color: kTextColor),
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                }),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: EdgeInsets.only(top: getProportionateScreenHeight(16)),
                padding:
                    EdgeInsets.only(right: getProportionateScreenWidth(16)),
                child: Text(" عملائنا",
                    textAlign: TextAlign.right, style: headingHome),
              ),
              Container(
                height: getProportionateScreenHeight(80),
                margin: EdgeInsets.symmetric(horizontal: 16,vertical: 16),
                child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: ListLogo.length,
                itemBuilder: (context, i) {
                  return InkWell(
                    child: Container(
                      padding: EdgeInsets.all(8),
                      margin: EdgeInsets.symmetric(horizontal: 10),
                      width: getProportionateScreenWidth(80),
                      height: getProportionateScreenHeight(80),
                      decoration: BoxDecoration(
                        color: kTextWhite,
                        borderRadius: BorderRadius.circular(16),
                        boxShadow: [
                          BoxShadow(
                            offset: Offset(0, 0),
                            blurRadius: 5,
                            color:
                            kShadowColor, // changes position of shadow
                          ),
                        ],
                      ),
                      child: Image.network(
                          "https://${ListLogo[i]['logo']}",
                          width: 56),
                    ),
                  );
                } ),
              )
            ],
          )
        ],
      ),
    ));
  }
}
