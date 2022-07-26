import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:university/config.dart';
import 'package:university/constants.dart';
import 'package:http/http.dart' as http;

import '../../size_config.dart';

class Reservation_infrmation_page extends StatefulWidget {
  @override
  State<Reservation_infrmation_page> createState() =>
      _Reservation_infrmation_pageState();
}

class _Reservation_infrmation_pageState
    extends State<Reservation_infrmation_page> {

  List ListPrice = [];

  Future getPrice() async {
    SharedPreferences sh = await SharedPreferences.getInstance();
    String id = sh.getString(G_use_id);
    String userToken = sh.getString(G_use_token);
    var url = path_api +
        "car/price/?id=" +
        id +
        "&user_token=" +
        userToken;
    Uri myUri = Uri.parse(url);
    print("url" + url);
    http.Response response = await http.get(myUri);
    if (json.decode(response.body)["Title"] == "Success") {
      var arr = json.decode(response.body)["Message"];
      setState(() {
        ListPrice.addAll(arr);
      });
      print("success");
      return true;
    } else {
      print("Failer");
      return false;
    }
  }

  List getFromRegionlist = [];

  Future getFromRegion() async {
    SharedPreferences sh = await SharedPreferences.getInstance();
    String id = sh.getString(G_use_id);
    String userToken = sh.getString(G_use_token);
    var baseUrl =
        path_api + "car/from_region/?id=" + id + "&user_token=" + userToken;

    http.Response response = await http.get(Uri.parse(baseUrl));

    if (json.decode(response.body)["Title"] == "Success") {
      var jsonData = json.decode(response.body)["Message"];
      setState(() {
        getFromRegionlist = jsonData;
        print(getFromRegionlist);
        print('nnnnnnnnnnnnnnnn');
      });
    }
  }

  //---------------------------------------------------

  List getToRegionlist = [];

  Future getToRegion() async {
    SharedPreferences sh = await SharedPreferences.getInstance();
    String id = sh.getString(G_use_id);
    String userToken = sh.getString(G_use_token);
    var baseUrl =
        path_api + "car/to_region/?id=" + id + "&user_token=" + userToken;

    http.Response response = await http.get(Uri.parse(baseUrl));

    if (json.decode(response.body)["Title"] == "Success") {
      var jsonData = json.decode(response.body)["Message"];
      setState(() {
        getToRegionlist = jsonData;
        print(getToRegionlist);
        print('nnnnnnnnnnnnnnnn');
      });
    }
  }

  //------------------------------

  @override
  void initState() {
    super.initState();
    getPrice();
    getFromRegion();
    getToRegion();
  }




  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          padding: EdgeInsets.only(top: 20, bottom: 0),
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.only(right: 8, top: 8, bottom: 8),
                child: Align(
                  child: Text('أسعار الرحلات',
                      style: TextStyle(
                          fontSize: 16, fontWeight: FontWeight.bold)),
                  alignment: Alignment.centerRight,
                ),
              ),

              Container(
                width: MediaQuery.of(context).size.width,
                height: getProportionateScreenHeight(80),
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: ListPrice.length,
                    itemBuilder: (context, i) {
                      return Container(
                        decoration: BoxDecoration(
                          color: kTextWhite,
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: [
                            BoxShadow(
                              color: kShadowColor,
                              blurRadius: 10,
                              offset: Offset(
                                  0, 0), // changes position of shadow
                            ),
                          ],
                        ),
                        margin: EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(8),vertical: getProportionateScreenHeight(4)),
                        padding: EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(8)),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Align(
                              child: Text(
                                  '${ListPrice[i]['fromregion']}' + ' إلى ' +  '${ListPrice[i]['toregion']}',
                                  style: TextStyle(
                                    fontSize: 14,
                                  )),
                              alignment: Alignment.center,
                            ),
                            Align(
                              child: Text(
                                  'التكلفة: ' + '${ListPrice[i]['firstvalue']}' + ' ليرة تركي' ,
                                  style: TextStyle(
                                    fontSize: 14,
                                  )),
                              alignment: Alignment.center,
                            ),

                          ],
                        ),
                      );
                    }),
              ),
              SizedBox(height: 20),
              Container(
                margin: EdgeInsets.only(right: 8, top: 8, bottom: 8),
                child: Align(
                  child: Text('أماكن الإنطلاق',
                      style: TextStyle(
                          fontSize: 16, fontWeight: FontWeight.bold)),
                  alignment: Alignment.centerRight,
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                height: getProportionateScreenHeight(60),
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: getFromRegionlist.length,
                    itemBuilder: (context, i) {
                      return Container(
                        decoration: BoxDecoration(
                          color: kTextWhite,
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: [
                            BoxShadow(
                              color: kShadowColor,
                              blurRadius: 10,
                              offset: Offset(
                                  0, 0), // changes position of shadow
                            ),
                          ],
                        ),
                        margin: EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(8),vertical: getProportionateScreenHeight(4)),
                        padding: EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(16)),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Align(
                              child: Text(
                                  '${getFromRegionlist[i]['point_region']}',
                                  style: TextStyle(
                                    fontSize: 14,
                                  )),
                              alignment: Alignment.center,
                            ),
                          ],
                        ),
                      );
                    }),
              ),

              SizedBox(height: 20),
              Container(
                margin: EdgeInsets.only(right: 8, top: 8, bottom: 8),
                child: Align(
                  child: Text('أماكن الوجهات',
                      style: TextStyle(
                          fontSize: 16, fontWeight: FontWeight.bold)),
                  alignment: Alignment.centerRight,
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                height: getProportionateScreenHeight(60),
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: getToRegionlist.length,
                    itemBuilder: (context, i) {
                      return Container(
                        decoration: BoxDecoration(
                          color: kTextWhite,
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: [
                            BoxShadow(
                              color: kShadowColor,
                              blurRadius: 10,
                              offset: Offset(
                                  0, 0), // changes position of shadow
                            ),
                          ],
                        ),
                        margin: EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(8),vertical: getProportionateScreenHeight(4)),
                        padding: EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(16)),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Align(
                              child: Text(
                                  '${getToRegionlist[i]['name']}',
                                  style: TextStyle(
                                    fontSize: 14,
                                  )),
                              alignment: Alignment.center,
                            ),
                          ],
                        ),
                      );
                    }),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
