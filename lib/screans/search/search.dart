import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_svg/svg.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:university/config.dart';
import 'package:url_launcher/url_launcher.dart';
import '../../constants.dart';
import '../../size_config.dart';
import 'package:http/http.dart' as http;
import '../Poropert_information/property.dart';

class search extends StatefulWidget {
  static String routeName = "/search";

  @override
  State<search> createState() => _searchState();
}

class _searchState extends State<search> {
  List ListPropType = [];
  List ListPropAll = [];
  List allProp = [];

  Future getPropType() async {
    SharedPreferences sh = await SharedPreferences.getInstance();
    String id = sh.getString(G_use_id);
    String userToken = sh.getString(G_use_token);
    var url = path_api +
        "property/property_types/?id=" +
        id +
        "&user_token=" +
        userToken;
    Uri myUri = Uri.parse(url);
    print("url" + url);
    http.Response response = await http.get(myUri);
    if (json.decode(response.body)["Title"] == "Success") {
      var arr = json.decode(response.body)["Message"];
      setState(() {
        ListPropType.addAll(arr);
      });
      print("success");
      return true;
    } else {
      print("Failer");
      return false;
    }
  }

  Future typeClick() async {
    print(type);
  }

  String type = "1";

  Future getPropAll() async {
    SharedPreferences sh = await SharedPreferences.getInstance();
    String id = sh.getString(G_use_id);
    String userToken = sh.getString(G_use_token);
    var url = path_api +
        "property/choose_type/?id=" +
        id +
        "&user_token=" +
        userToken +
        "&type=" +
        type;
    Uri myUri = Uri.parse(url);
    print("url" + url);
    http.Response response = await http.get(myUri);
    if (json.decode(response.body)["Title"] == "Success") {
      var arr = json.decode(response.body)["Message"];
      setState(() {
        ListPropAll.addAll(arr);
      });
      print("success");
      print(ListPropAll.length);
      print(ListPropAll[0]['property_types']);
      return true;
    } else {
      print("Failer");
      return false;
    }
  }

  Future openwhatsapp() async {
    String whatsapp = "+905340865408";
    String urlPhone = "whatsapp://send?phone=$whatsapp&text=HelloHisham";
    await canLaunch(urlPhone) ? launch(urlPhone) : print ("can't open");
    //await launch('https://wa.me/$whatsapp?text=HelloHisham');
  }
  @override
  void initState() {
    super.initState();
    typeClick();
    getPropAll();
    getPropType();
    openwhatsapp();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(
        child: ListView(
          padding:
              EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(8)),
          children: [
            /*
            Container(
              margin: EdgeInsets.all(20),
              child: SingleChildScrollView(
                child: Row(
                  children: [
                    Container(
                      width: 80,
                      height: 40,
                      padding: EdgeInsets.only(bottom: 10),
                      decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Text('شقة',
                          textAlign: TextAlign.center,
                          style: TextStyle(fontSize: 18, color: Colors.white)),
                    ),
                  ],
                ),
              ),
            ),

             */
            Container(
              width: MediaQuery.of(context).size.width,
              height: getProportionateScreenHeight(40),
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: ListPropType.length,
                  itemBuilder: (context, i) {
                    return InkWell(
                      onTap: () async {
                        setState(() {
                          ListPropAll = [];
                          type = (i + 1).toString();
                          typeClick();
                          getPropAll();
                        });
                      },
                      child: Container(
                        margin: EdgeInsets.symmetric(horizontal: 4),
                        padding: EdgeInsets.symmetric(horizontal: 12),
                        decoration: BoxDecoration(
                          color: kTextColor,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Text('${ListPropType[i]['name']}',
                            textAlign: TextAlign.center,
                            style:
                                TextStyle(fontSize: 13, color: Colors.white)),
                      ),
                    );
                  }),
            ),
            SizedBox(height: getProportionateScreenHeight(16)),
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              child: ListView.builder(
                  scrollDirection: Axis.vertical,
                  itemCount: ListPropAll.length,
                  itemBuilder: (context, i) {
                    return GestureDetector(
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Test()));
                      },
                      child: Container(
                        margin: EdgeInsets.symmetric(vertical: 8),
                        width: MediaQuery.of(context).size.width,
                        height: getProportionateScreenHeight(110),
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            primary: kTextWhite,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20),
                            ),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Expanded(
                                flex: 2,
                                child: Container(
                                  alignment: Alignment.centerRight,
                                  padding: EdgeInsets.all(4),
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(20),
                                    child: Image.network(
                                      'https://${ListPropAll[i]['picture']}',
                                      width: double.infinity,
                                      height: double.infinity,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                              ),
                              Expanded(
                                  flex: 5,
                                  child: Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Container(
                                        child: Row(
                                          children: [
                                            Spacer(
                                              flex: 1,
                                            ),
                                            Text(
                                              '${ListPropAll[i]['property_types']}',
                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  color: kTextColor,
                                                  fontSize:
                                                      getProportionateScreenWidth(
                                                          14)),
                                            ),
                                            Spacer(flex: 2),
                                            Container(
                                              padding: EdgeInsets.symmetric(
                                                  vertical: 2, horizontal: 16),
                                              decoration: BoxDecoration(
                                                color: kPrimaryLightColor,
                                                borderRadius:
                                                    BorderRadius.circular(8),
                                              ),
                                              child: Center(
                                                  child: Text(
                                                '${ListPropAll[i]['owner_name']}',
                                                style: TextStyle(
                                                    fontWeight: FontWeight.bold,
                                                    color: kTextColor,
                                                    fontSize:
                                                        getProportionateScreenWidth(
                                                            12)),
                                              )),
                                            ),
                                            Spacer(flex: 2),
                                            InkWell(
                                              onTap: () async {
                                                setState(() {
                                                  // openwhatsapp();
                                                  print('nnnnnnnnnnn');
                                                });
                                              },
                                              child: Container(
                                                child: CircleAvatar(
                                                  radius:
                                                      getProportionateScreenWidth(
                                                          20),
                                                  backgroundColor: kShadowColor,
                                                  child: IconButton(
                                                      onPressed: () {
                                                        setState(() {
                                                          print('ccccccccc');
                                                          openwhatsapp();
                                                        });
                                                      },
                                                      icon: SvgPicture.asset(
                                                        "assets/icons/whatsapp.svg",
                                                        color: Colors.green,
                                                        width:
                                                            getProportionateScreenWidth(
                                                                20),
                                                      )),
                                                ),
                                              ),
                                            ),
                                            Spacer(flex: 1),
                                          ],
                                        ),
                                      ),
                                      Container(
                                        height:
                                            getProportionateScreenHeight(45),
                                        child: Row(
                                          children: [
                                            Expanded(
                                              child: Column(
                                                children: [
                                                  Container(
                                                    padding: EdgeInsets.all(2),
                                                    alignment:
                                                        Alignment.topCenter,
                                                    child: Text(
                                                      ' الغرف',
                                                      style: SmallText,
                                                    ),
                                                  ),
                                                  Container(
                                                    child: Text(
                                                      '${ListPropAll[i]['room_count']}',
                                                      style: SmallText,
                                                    ),
                                                  )
                                                ],
                                              ),
                                            ),
                                            VerticalDivider(
                                              color: kTextGray,
                                            ),
                                            Expanded(
                                              child: Column(
                                                children: [
                                                  Container(
                                                    padding: EdgeInsets.all(2),
                                                    alignment:
                                                        Alignment.topCenter,
                                                    child: Text(
                                                      'المساحة ',
                                                      style: SmallText,
                                                    ),
                                                  ),
                                                  Container(
                                                    child: Text(
                                                      '${ListPropAll[i]['space']}',
                                                      style: SmallText,
                                                    ),
                                                  )
                                                ],
                                              ),
                                            ),
                                            VerticalDivider(
                                              color: kTextGray,
                                            ),
                                            Expanded(
                                              child: Column(
                                                children: [
                                                  Container(
                                                    padding: EdgeInsets.all(2),
                                                    alignment:
                                                        Alignment.topCenter,
                                                    child: Text(
                                                      'السعر',
                                                      style: SmallText,
                                                    ),
                                                  ),
                                                  Container(
                                                    child: Text(
                                                      '${ListPropAll[i]['price']}',
                                                      style: SmallText,
                                                    ),
                                                  )
                                                ],
                                              ),
                                            ),
                                            VerticalDivider(
                                              color: kTextGray,
                                            ),
                                            Expanded(
                                              child: Column(
                                                children: [
                                                  Container(
                                                    padding: EdgeInsets.all(2),
                                                    alignment:
                                                        Alignment.topCenter,
                                                    child: Text(
                                                      'السعر',
                                                      style: SmallText,
                                                    ),
                                                  ),
                                                  Container(
                                                    child: Text(
                                                      '${ListPropAll[i]['price']}',
                                                      style: SmallText,
                                                    ),
                                                  )
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  )),
                            ],
                          ),
                        ),
                      ),
                    );
                  }),
            ),
          ],
        ),
      ),
    );
  }
}
