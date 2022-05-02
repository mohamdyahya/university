import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../../constants.dart';
import '../../size_config.dart';
import '../Poropert_information/property.dart';

class search extends StatefulWidget {
  static String routeName = "/search";

  @override
  State<search> createState() => _searchState();
}

class _searchState extends State<search> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        shadowColor: Colors.black,
        leading: IconButton(
          icon: Icon(Icons.search),
        ),
        actions: [IconButton(onPressed: () {}, icon: Icon(Icons.zoom_out_map))],
      ),
      body: SafeArea(
        child: ListView(
          padding: EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(8)),
          children: [
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
            Container(
              height: getProportionateScreenHeight(104),
              margin: EdgeInsets.symmetric(vertical: getProportionateScreenHeight(8)),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Test()),
                  );
                },
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
                            'https://images.pexels.com/photos/1918291/pexels-photo-1918291.jpeg?auto=compress&cs=tinysrgb&h=750&w=1260',
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
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Container(
                              child: Row(
                                children: [
                                  Spacer(flex: 1,),
                                  Text('شقة للإيجار',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: kTextColor,
                                        fontSize: getProportionateScreenWidth(14)
                                    ),
                                  ),
                                  Spacer(flex: 2),
                                  Container(
                                    padding: EdgeInsets.symmetric(
                                        vertical: 2, horizontal: 16),
                                    decoration: BoxDecoration(
                                      color: kPrimaryLightColor,
                                      borderRadius: BorderRadius.circular(8),
                                    ),
                                    child: Center(
                                        child: Text(
                                      'مكتب الرحمن',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: kTextColor,
                                        fontSize: getProportionateScreenWidth(12)
                                      ),
                                    )),
                                  ),
                                  Spacer(flex: 2),
                                  Container(
                                    child: CircleAvatar(
                                      radius: getProportionateScreenWidth(20),
                                      backgroundColor: kShadowColor,
                                      child: IconButton(
                                          onPressed: () {},
                                          icon: SvgPicture.asset(
                                            "assets/icons/whatsapp.svg",
                                            color: Colors.green,
                                            width: getProportionateScreenWidth(20),
                                          )),
                                    ),
                                  ),
                                  Spacer(flex: 1),
                                ],
                              ),
                            ),
                            Container(
                              height: getProportionateScreenHeight(40),
                              child: Row(
                                children: [
                                  Expanded(
                                    child: Column(
                                      children: [
                                        Container(
                                          padding: EdgeInsets.all(2),
                                          alignment: Alignment.topCenter,
                                          child: Text(
                                            ' الغرف',
                                            style: SmallText,
                                          ),
                                        ),
                                        Container(
                                          child: Text(
                                            '4',
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
                                          alignment: Alignment.topCenter,
                                          child: Text(
                                            'المساحة ',
                                            style: SmallText,
                                          ),
                                        ),
                                        Container(
                                          child: Text(
                                            '125',
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
                                          alignment: Alignment.topCenter,
                                          child: Text(
                                            'مدة العقد',
                                            style: SmallText,
                                          ),
                                        ),
                                        Container(
                                          child: Text(
                                            '5',
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
                                          alignment: Alignment.topCenter,
                                          child: Text(
                                            ' الغرف',
                                            style: SmallText,
                                          ),
                                        ),
                                        Container(
                                          child: Text(
                                            '\$' ' 4 ',
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
            Container(
              height: getProportionateScreenHeight(104),
              margin: EdgeInsets.symmetric(vertical: getProportionateScreenHeight(8)),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Test()),
                  );
                },
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
                            'https://images.pexels.com/photos/1918291/pexels-photo-1918291.jpeg?auto=compress&cs=tinysrgb&h=750&w=1260',
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
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Container(
                              child: Row(
                                children: [
                                  Spacer(flex: 1,),
                                  Text('شقة للإيجار',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: kTextColor,
                                        fontSize: getProportionateScreenWidth(14)
                                    ),
                                  ),
                                  Spacer(flex: 2),
                                  Container(
                                    padding: EdgeInsets.symmetric(
                                        vertical: 2, horizontal: 16),
                                    decoration: BoxDecoration(
                                      color: kPrimaryLightColor,
                                      borderRadius: BorderRadius.circular(8),
                                    ),
                                    child: Center(
                                        child: Text(
                                          'مكتب الرحمن',
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              color: kTextColor,
                                              fontSize: getProportionateScreenWidth(12)
                                          ),
                                        )),
                                  ),
                                  Spacer(flex: 2),
                                  Container(
                                    child: CircleAvatar(
                                      radius: getProportionateScreenWidth(20),
                                      backgroundColor: kShadowColor,
                                      child: IconButton(
                                          onPressed: () {},
                                          icon: SvgPicture.asset(
                                            "assets/icons/whatsapp.svg",
                                            color: Colors.green,
                                            width: getProportionateScreenWidth(20),
                                          )),
                                    ),
                                  ),
                                  Spacer(flex: 1),
                                ],
                              ),
                            ),
                            Container(
                              height: getProportionateScreenHeight(40),
                              child: Row(
                                children: [
                                  Expanded(
                                    child: Column(
                                      children: [
                                        Container(
                                          padding: EdgeInsets.all(2),
                                          alignment: Alignment.topCenter,
                                          child: Text(
                                            ' الغرف',
                                            style: SmallText,
                                          ),
                                        ),
                                        Container(
                                          child: Text(
                                            '4',
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
                                          alignment: Alignment.topCenter,
                                          child: Text(
                                            'المساحة ',
                                            style: SmallText,
                                          ),
                                        ),
                                        Container(
                                          child: Text(
                                            '125',
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
                                          alignment: Alignment.topCenter,
                                          child: Text(
                                            'مدة العقد',
                                            style: SmallText,
                                          ),
                                        ),
                                        Container(
                                          child: Text(
                                            '5',
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
                                          alignment: Alignment.topCenter,
                                          child: Text(
                                            ' الغرف',
                                            style: SmallText,
                                          ),
                                        ),
                                        Container(
                                          child: Text(
                                            '\$' ' 4 ',
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
            Container(
              height: getProportionateScreenHeight(104),
              margin: EdgeInsets.symmetric(vertical: getProportionateScreenHeight(8)),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Test()),
                  );
                },
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
                            'https://images.pexels.com/photos/1918291/pexels-photo-1918291.jpeg?auto=compress&cs=tinysrgb&h=750&w=1260',
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
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Container(
                              child: Row(
                                children: [
                                  Spacer(flex: 1,),
                                  Text('شقة للإيجار',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: kTextColor,
                                        fontSize: getProportionateScreenWidth(14)
                                    ),
                                  ),
                                  Spacer(flex: 2),
                                  Container(
                                    padding: EdgeInsets.symmetric(
                                        vertical: 2, horizontal: 16),
                                    decoration: BoxDecoration(
                                      color: kPrimaryLightColor,
                                      borderRadius: BorderRadius.circular(8),
                                    ),
                                    child: Center(
                                        child: Text(
                                          'مكتب الرحمن',
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              color: kTextColor,
                                              fontSize: getProportionateScreenWidth(12)
                                          ),
                                        )),
                                  ),
                                  Spacer(flex: 2),
                                  Container(
                                    child: CircleAvatar(
                                      radius: getProportionateScreenWidth(20),
                                      backgroundColor: kShadowColor,
                                      child: IconButton(
                                          onPressed: () {},
                                          icon: SvgPicture.asset(
                                            "assets/icons/whatsapp.svg",
                                            color: Colors.green,
                                            width: getProportionateScreenWidth(20),
                                          )),
                                    ),
                                  ),
                                  Spacer(flex: 1),
                                ],
                              ),
                            ),
                            Container(
                              height: getProportionateScreenHeight(40),
                              child: Row(
                                children: [
                                  Expanded(
                                    child: Column(
                                      children: [
                                        Container(
                                          padding: EdgeInsets.all(2),
                                          alignment: Alignment.topCenter,
                                          child: Text(
                                            ' الغرف',
                                            style: SmallText,
                                          ),
                                        ),
                                        Container(
                                          child: Text(
                                            '4',
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
                                          alignment: Alignment.topCenter,
                                          child: Text(
                                            'المساحة ',
                                            style: SmallText,
                                          ),
                                        ),
                                        Container(
                                          child: Text(
                                            '125',
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
                                          alignment: Alignment.topCenter,
                                          child: Text(
                                            'مدة العقد',
                                            style: SmallText,
                                          ),
                                        ),
                                        Container(
                                          child: Text(
                                            '5',
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
                                          alignment: Alignment.topCenter,
                                          child: Text(
                                            ' الغرف',
                                            style: SmallText,
                                          ),
                                        ),
                                        Container(
                                          child: Text(
                                            '\$' ' 4 ',
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
            Container(
              height: getProportionateScreenHeight(104),
              margin: EdgeInsets.symmetric(vertical: getProportionateScreenHeight(8)),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Test()),
                  );
                },
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
                            'https://images.pexels.com/photos/1918291/pexels-photo-1918291.jpeg?auto=compress&cs=tinysrgb&h=750&w=1260',
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
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Container(
                              child: Row(
                                children: [
                                  Spacer(flex: 1,),
                                  Text('شقة للإيجار',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: kTextColor,
                                        fontSize: getProportionateScreenWidth(14)
                                    ),
                                  ),
                                  Spacer(flex: 2),
                                  Container(
                                    padding: EdgeInsets.symmetric(
                                        vertical: 2, horizontal: 16),
                                    decoration: BoxDecoration(
                                      color: kPrimaryLightColor,
                                      borderRadius: BorderRadius.circular(8),
                                    ),
                                    child: Center(
                                        child: Text(
                                          'مكتب الرحمن',
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              color: kTextColor,
                                              fontSize: getProportionateScreenWidth(12)
                                          ),
                                        )),
                                  ),
                                  Spacer(flex: 2),
                                  Container(
                                    child: CircleAvatar(
                                      radius: getProportionateScreenWidth(20),
                                      backgroundColor: kShadowColor,
                                      child: IconButton(
                                          onPressed: () {},
                                          icon: SvgPicture.asset(
                                            "assets/icons/whatsapp.svg",
                                            color: Colors.green,
                                            width: getProportionateScreenWidth(20),
                                          )),
                                    ),
                                  ),
                                  Spacer(flex: 1),
                                ],
                              ),
                            ),
                            Container(
                              height: getProportionateScreenHeight(40),
                              child: Row(
                                children: [
                                  Expanded(
                                    child: Column(
                                      children: [
                                        Container(
                                          padding: EdgeInsets.all(2),
                                          alignment: Alignment.topCenter,
                                          child: Text(
                                            ' الغرف',
                                            style: SmallText,
                                          ),
                                        ),
                                        Container(
                                          child: Text(
                                            '4',
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
                                          alignment: Alignment.topCenter,
                                          child: Text(
                                            'المساحة ',
                                            style: SmallText,
                                          ),
                                        ),
                                        Container(
                                          child: Text(
                                            '125',
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
                                          alignment: Alignment.topCenter,
                                          child: Text(
                                            'مدة العقد',
                                            style: SmallText,
                                          ),
                                        ),
                                        Container(
                                          child: Text(
                                            '5',
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
                                          alignment: Alignment.topCenter,
                                          child: Text(
                                            ' الغرف',
                                            style: SmallText,
                                          ),
                                        ),
                                        Container(
                                          child: Text(
                                            '\$' ' 4 ',
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
            Container(
              height: getProportionateScreenHeight(104),
              margin: EdgeInsets.symmetric(vertical: getProportionateScreenHeight(8)),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Test()),
                  );
                },
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
                            'https://images.pexels.com/photos/1918291/pexels-photo-1918291.jpeg?auto=compress&cs=tinysrgb&h=750&w=1260',
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
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Container(
                              child: Row(
                                children: [
                                  Spacer(flex: 1,),
                                  Text('شقة للإيجار',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: kTextColor,
                                        fontSize: getProportionateScreenWidth(14)
                                    ),
                                  ),
                                  Spacer(flex: 2),
                                  Container(
                                    padding: EdgeInsets.symmetric(
                                        vertical: 2, horizontal: 16),
                                    decoration: BoxDecoration(
                                      color: kPrimaryLightColor,
                                      borderRadius: BorderRadius.circular(8),
                                    ),
                                    child: Center(
                                        child: Text(
                                          'مكتب الرحمن',
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              color: kTextColor,
                                              fontSize: getProportionateScreenWidth(12)
                                          ),
                                        )),
                                  ),
                                  Spacer(flex: 2),
                                  Container(
                                    child: CircleAvatar(
                                      radius: getProportionateScreenWidth(20),
                                      backgroundColor: kShadowColor,
                                      child: IconButton(
                                          onPressed: () {},
                                          icon: SvgPicture.asset(
                                            "assets/icons/whatsapp.svg",
                                            color: Colors.green,
                                            width: getProportionateScreenWidth(20),
                                          )),
                                    ),
                                  ),
                                  Spacer(flex: 1),
                                ],
                              ),
                            ),
                            Container(
                              height: getProportionateScreenHeight(40),
                              child: Row(
                                children: [
                                  Expanded(
                                    child: Column(
                                      children: [
                                        Container(
                                          padding: EdgeInsets.all(2),
                                          alignment: Alignment.topCenter,
                                          child: Text(
                                            ' الغرف',
                                            style: SmallText,
                                          ),
                                        ),
                                        Container(
                                          child: Text(
                                            '4',
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
                                          alignment: Alignment.topCenter,
                                          child: Text(
                                            'المساحة ',
                                            style: SmallText,
                                          ),
                                        ),
                                        Container(
                                          child: Text(
                                            '125',
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
                                          alignment: Alignment.topCenter,
                                          child: Text(
                                            'مدة العقد',
                                            style: SmallText,
                                          ),
                                        ),
                                        Container(
                                          child: Text(
                                            '5',
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
                                          alignment: Alignment.topCenter,
                                          child: Text(
                                            ' الغرف',
                                            style: SmallText,
                                          ),
                                        ),
                                        Container(
                                          child: Text(
                                            '\$' ' 4 ',
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
            Container(
              height: getProportionateScreenHeight(104),
              margin: EdgeInsets.symmetric(vertical: getProportionateScreenHeight(8)),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Test()),
                  );
                },
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
                            'https://images.pexels.com/photos/1918291/pexels-photo-1918291.jpeg?auto=compress&cs=tinysrgb&h=750&w=1260',
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
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Container(
                              child: Row(
                                children: [
                                  Spacer(flex: 1,),
                                  Text('شقة للإيجار',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: kTextColor,
                                        fontSize: getProportionateScreenWidth(14)
                                    ),
                                  ),
                                  Spacer(flex: 2),
                                  Container(
                                    padding: EdgeInsets.symmetric(
                                        vertical: 2, horizontal: 16),
                                    decoration: BoxDecoration(
                                      color: kPrimaryLightColor,
                                      borderRadius: BorderRadius.circular(8),
                                    ),
                                    child: Center(
                                        child: Text(
                                          'مكتب الرحمن',
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              color: kTextColor,
                                              fontSize: getProportionateScreenWidth(12)
                                          ),
                                        )),
                                  ),
                                  Spacer(flex: 2),
                                  Container(
                                    child: CircleAvatar(
                                      radius: getProportionateScreenWidth(20),
                                      backgroundColor: kShadowColor,
                                      child: IconButton(
                                          onPressed: () {},
                                          icon: SvgPicture.asset(
                                            "assets/icons/whatsapp.svg",
                                            color: Colors.green,
                                            width: getProportionateScreenWidth(20),
                                          )),
                                    ),
                                  ),
                                  Spacer(flex: 1),
                                ],
                              ),
                            ),
                            Container(
                              height: getProportionateScreenHeight(40),
                              child: Row(
                                children: [
                                  Expanded(
                                    child: Column(
                                      children: [
                                        Container(
                                          padding: EdgeInsets.all(2),
                                          alignment: Alignment.topCenter,
                                          child: Text(
                                            ' الغرف',
                                            style: SmallText,
                                          ),
                                        ),
                                        Container(
                                          child: Text(
                                            '4',
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
                                          alignment: Alignment.topCenter,
                                          child: Text(
                                            'المساحة ',
                                            style: SmallText,
                                          ),
                                        ),
                                        Container(
                                          child: Text(
                                            '125',
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
                                          alignment: Alignment.topCenter,
                                          child: Text(
                                            'مدة العقد',
                                            style: SmallText,
                                          ),
                                        ),
                                        Container(
                                          child: Text(
                                            '5',
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
                                          alignment: Alignment.topCenter,
                                          child: Text(
                                            ' الغرف',
                                            style: SmallText,
                                          ),
                                        ),
                                        Container(
                                          child: Text(
                                            '\$' ' 4 ',
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

          ],
        ),
      ),
    );
  }
}
