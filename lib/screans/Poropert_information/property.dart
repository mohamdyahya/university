import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:university/constants.dart';
import 'package:university/screans/search/search.dart';
import 'package:http/http.dart' as http;
import 'package:university/size_config.dart';
import 'package:map_launcher/map_launcher.dart';
import 'package:location/location.dart';
import '../../components/default_button.dart';
import '../../config.dart';

var latitude = 36.638746;
var longitude = 36.833688;

final List<String> imageList = [
  "assets/images/2.jpg",
  "assets/images/3.jpg",
  "assets/images/4.jpg",
  "assets/images/5.jpg",
  "assets/images/6.jpg"
];
// Information_Property

class Test extends StatefulWidget {
  @override
  State<Test> createState() => _TestState();
}

class _TestState extends State<Test> {
  List ListgetPropDet = [];

  Future getPropDet() async {
    SharedPreferences sh = await SharedPreferences.getInstance();
    String id = sh.getString(G_use_id);
    String userToken = sh.getString(G_use_token);
    var url = path_api +
        "property/property_info/?id=" +
        id +
        "&user_token=" +
        userToken + "&proprety_id=1";
    Uri myUri = Uri.parse(url);
    print("url" + url);
    http.Response response = await http.get(myUri);
    if (json.decode(response.body)["Title"] == "Success") {
      var arr = json.decode(response.body)["Message"];
      setState(() {
        ListgetPropDet.addAll(arr);
      });
      print(ListgetPropDet);
      print("success");
      return true;
    } else {
      print("Failer");
      return false;
    }
  }

  @override
  void initState() {
    super.initState();
    getPropDet();
  }


  Location location = Location();
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Directionality(
        textDirection: TextDirection.rtl,
        child: Scaffold(
            body: ListView(
          children: [
            Column(
              children: [
                Container(
                  margin: EdgeInsets.all(15),
                  child: CarouselSlider.builder(
                    itemCount: imageList.length,
                    options: CarouselOptions(
                      enlargeCenterPage: true,
                      height: getProportionateScreenHeight(240),
                      autoPlay: true,
                      autoPlayInterval: Duration(seconds: 2),
                      reverse: true,
                      aspectRatio: 0.5,
                    ),
                    itemBuilder: (context, i, id) {
                      //for onTap to redirect to another screen
                      return GestureDetector(
                        child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              border: Border.all(
                                color: Colors.white,
                              )),
                          //ClipRRect for image border radius
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(15),
                            child: Image.asset(
                              imageList[i],
                              width: 500,
                              fit: BoxFit.fill,
                            ),
                          ),
                        ),
                        onTap: () {
                          //
                        },
                      );
                    },
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(5),
                  decoration: BoxDecoration(
                    border: Border.all(width: 1, color: Colors.white),
                    color: kPrimaryLightColor,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  width: 130,
                  child: Center(
                      child: Text(
                        'مكتب الرحمن',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  )),
                ),
                Container(
                  margin: EdgeInsets.all(10),
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      //               gradient: LinearGradient(
                      //                 begin: Alignment.topCenter,
                      //                 colors: [ Colors.yellow,Colors.yellow,Colors.yellow
                      //   ]
                      // ),
                      border: Border.all(width: 1, color: kTextGray),
                      borderRadius: BorderRadius.circular(16),
                      color: kTextWhite),
                  width: double.infinity,
                  height: getProportionateScreenHeight(96),
                  child: Row(
                    children: [
                      Expanded(
                        child: Column(
                          children: [
                            Container(
                              padding: EdgeInsets.all(2),
                              alignment: Alignment.topCenter,
                              child: Text(
                                'نوع العقار',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                            ),
                            Container(
                              child: Text('شقة'),
                            )
                          ],
                        ),
                      ),
                      VerticalDivider(
                        color: Colors.black,
                      ),
                      Expanded(
                        child: Column(
                          children: [
                            Container(
                              padding: EdgeInsets.all(2),
                              alignment: Alignment.topCenter,
                              child: Text(
                                'عدد الغرف ',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                            ),
                            Container(
                              child: Text('5'),
                            )
                          ],
                        ),
                      ),
                      VerticalDivider(
                        color: Colors.black,
                      ),
                      Expanded(
                        child: Column(
                          children: [
                            Container(
                              padding: EdgeInsets.all(2),
                              alignment: Alignment.topCenter,
                              child: Text(
                                'المساحة',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                            ),
                            Container(
                              child: Text('125'),
                            )
                          ],
                        ),
                      ),
                      VerticalDivider(
                        color: Colors.black,
                      ),
                      Expanded(
                        child: Column(
                          children: [
                            Container(
                              padding: EdgeInsets.all(2),
                              alignment: Alignment.topCenter,
                              child: Text(
                                'السعر',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                            ),
                            Container(
                              child: Text('125 '),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                    padding: EdgeInsets.all(10),
                    alignment: Alignment.centerRight,
                    child: Text(
                      'الوصف',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    )),
                Container(
                  child: Text(
                      "هذا النص هو مثال لنص يمكن أن يستبدل في نفس المساحة، لقد تم توليد هذا النص من مولد النص العربى، حيث يمكنك أن تولد مثل هذا النص أو العديد من النصوص الأخرى إضافة إلى زيادة عدد الحروف التى يولدها التطبيق يد، النص لن يبدو مقسما ولا يحوي أخطاء لغوية، مولد النص العربى مفيد لمصممي المواقع على وجه الخصوص، حيث يحتاج العميل فى كثير من الأحيان أن يطلع على صورة حقيقية لتصميم الموقع"),
                ),
                SizedBox(
                  height: getProportionateScreenHeight(32),
                ),
                Container(
                  margin: EdgeInsets.symmetric(
                      horizontal: getProportionateScreenHeight(24)),
                  child: DefaultButton(
                    text: "الموقع على الخريطة",
                    press: () async {
                      var value = await location.getLocation();
                      if (await MapLauncher.isMapAvailable(MapType.google)) {
                        MapLauncher.showMarker(
                            mapType: MapType.google,
                            coords: Coords(latitude, longitude),
                            title: 'title');
                      }
                    },
                  ),
                ),
              ],
            ),
          ],
        )));
  }
}
