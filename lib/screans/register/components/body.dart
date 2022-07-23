import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';
import '../../../components/default_button.dart';
import '../../../config.dart';
import '../../../constants.dart';
import '../../../size_config.dart';
import '../../reservations/my_reservations_screen.dart';

class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
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

  List getPricelist = [];

  Future RegisterTrip() async {
    SharedPreferences sh = await SharedPreferences.getInstance();
    String id = sh.getString(G_use_id);
    String userToken = sh.getString(G_use_token);

    String url = path_api +
        "car/register/?id=" +
        id +
        "&user_token=" +
        userToken +
        "&from_region_id=" +
        dropdownvalue.toString() +
        "&to_region_id=" +
        dropdownvalue2.toString();

    print(url);
    Uri myUri = Uri.parse(url);
    http.Response response = await http.get(myUri);

      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => MyReservations()));
  }

  //------------------------------

  @override
  void initState() {
    super.initState();
    getFromRegion();
    getToRegion();
  }

  var dropdownvalue;
  var dropdownvalue2;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: double.infinity,
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: kTextWhite,
                border: Border.all(color: kTextGray),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: DropdownButton(
                  hint: Text('الانطلاق'),
                  items: getFromRegionlist.map((item) {
                    return DropdownMenuItem(
                      value: item['id'].toString(),
                      child: Text(item['point_region'].toString()),
                    );
                  }).toList(),
                  onChanged: (newVal) {
                    setState(() {
                      dropdownvalue = newVal;
                    });
                  },
                  value: dropdownvalue,
                ),
              ),
            ),
            SizedBox(height: getProportionateScreenHeight(32)),
            Container(
              width: double.infinity,
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: kTextWhite,
                border: Border.all(color: kTextGray),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: DropdownButton(
                  hint: Text('الوجهة'),
                  items: getToRegionlist.map((item) {
                    return DropdownMenuItem(
                      value: item['id'].toString(),
                      child: Text(item['name'].toString()),
                    );
                  }).toList(),
                  onChanged: (newVal) {
                    setState(() {
                      dropdownvalue2 = newVal;
                      print(dropdownvalue2);
                    });
                  },
                  value: dropdownvalue2,
                ),
              ),
            ),
            SizedBox(height: getProportionateScreenHeight(80)),
            DefaultButton(
              text: "التسجيل على رحلة",
              press: () {
                RegisterTrip();
              },
            ),
          ],
        ),
      ),
    );
  }
}
