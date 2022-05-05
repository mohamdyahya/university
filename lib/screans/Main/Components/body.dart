import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter_svg/svg.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:university/size_config.dart';

import '../../../constants.dart';

int activeIndex = 0;
final List<String> imageList = [
  "assets/images/2.jpg",
  "assets/images/3.jpg",
  "assets/images/4.jpg",
  "assets/images/5.jpg",
  "assets/images/6.jpg"
];

Widget buildIndicator() => AnimatedSmoothIndicator(
      activeIndex: activeIndex,
      count: imageList.length,
      effect: ExpandingDotsEffect(
          dotWidth: getProportionateScreenWidth(8),
          dotHeight: getProportionateScreenHeight(8),
          dotColor: kTextWhite,
          activeDotColor: kPrimaryColor),
    );

class body extends StatefulWidget {
  @override
  State<body> createState() => _bodyState();
}

class _bodyState extends State<body> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: ListView(
        children: [
          Column(
            children: [
              Container(
                margin:
                    EdgeInsets.only( left: 10, right: 10, bottom: 0),
                child: Column(
                  children: [
                    Stack(
                      children: [
                        CarouselSlider.builder(
                          itemCount: imageList.length,
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
                            //for onTap to redirect to another screen
                            return GestureDetector(
                              child: Container(
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(15),
                                  ),
                                //ClipRRect for image border radius
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(15),
                                  child: Image.asset(
                                    imageList[i],
                                    width: double.infinity,
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
              Container(
                margin: EdgeInsets.only(top: getProportionateScreenHeight(16),bottom: getProportionateScreenHeight(8)),
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
                      Column(
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
                              'https://www.freeiconspng.com/uploads/apartment-icon-10.png',
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
                      Column(
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
                                'https://www.freeiconspng.com/uploads/apartment-icon-10.png',
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
                      Column(
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
                                'https://www.freeiconspng.com/uploads/apartment-icon-10.png',
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
                      Column(
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
                                'https://www.freeiconspng.com/uploads/apartment-icon-10.png',
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
                      Column(
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
                                'https://www.freeiconspng.com/uploads/apartment-icon-10.png',
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
                    ],
                  ),
                ),
              )
            ],
          ),
          Container(
            margin:
                EdgeInsets.only(top: getProportionateScreenHeight(16),bottom: getProportionateScreenHeight(16)),
            padding: EdgeInsets.only(right: getProportionateScreenWidth(16)),
            alignment: Alignment.bottomRight,
            child: Text("التسجيل على رحلة  ",
                textAlign: TextAlign.start, style: headingHome),
          ),
          Container(
            margin: EdgeInsets.symmetric(
                horizontal: getProportionateScreenWidth(16)),
            child: ElevatedButton(
              onPressed: () {},
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
            margin:
            EdgeInsets.only(top: getProportionateScreenHeight(16)),
            padding: EdgeInsets.only(right: getProportionateScreenWidth(16) ),
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
            margin: EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(8)),
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Container(
                    height: getProportionateScreenHeight(112),
                    padding:
                        EdgeInsets.only(left: getProportionateScreenWidth(8),right: getProportionateScreenWidth(8)),
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
                                  "https://images.pexels.com/photos/1918291/pexels-photo-1918291.jpeg?auto=compress&cs=tinysrgb&h=750&w=1260"
                              ),

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
                                  "شقة للأجار",
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
                                    " 4 غرف",
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
                                    " 125 متر",
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
                  Container(
                    height: getProportionateScreenHeight(112),
                    padding:
                    EdgeInsets.only(left: getProportionateScreenWidth(8),right: getProportionateScreenWidth(8)),
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
                                  "https://images.pexels.com/photos/1918291/pexels-photo-1918291.jpeg?auto=compress&cs=tinysrgb&h=750&w=1260"
                              ),

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
                                  "شقة للأجار",
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
                                    " 4 غرف",
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
                                    " 125 متر",
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

                ],
              ),
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin:
                EdgeInsets.only(top: getProportionateScreenHeight(16)),
                padding: EdgeInsets.only(right: getProportionateScreenWidth(16)),
                child: Text(" عملائنا",
                    textAlign: TextAlign.right, style: headingHome),
              ),
              Container(
                height: getProportionateScreenHeight(120),
                margin: EdgeInsets.symmetric( horizontal: 16),
                child: SingleChildScrollView(
                  child: Row(
                    children: [
                      InkWell(
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
                                blurRadius: 10,
                                color: kShadowColor,// changes position of shadow
                              ),
                            ],
                          ),
                          child: Image.network("https://shmector.com/_ph/13/188552034.png", width: 56),
                        ),
                      ),
                      InkWell(
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
                                blurRadius: 10,
                                color: kShadowColor,// changes position of shadow
                              ),
                            ],
                          ),
                          child: Image.network("https://shmector.com/_ph/13/188552034.png", width: 56),
                        ),
                      ),
                      InkWell(
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
                                blurRadius: 10,
                                color: kShadowColor,// changes position of shadow
                              ),
                            ],
                          ),
                          child: Image.network("https://shmector.com/_ph/13/188552034.png", width: 56),
                        ),
                      ),
                      InkWell(
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
                                blurRadius: 10,
                                color: kShadowColor,// changes position of shadow
                              ),
                            ],
                          ),
                          child: Image.network("https://shmector.com/_ph/13/188552034.png", width: 56),
                        ),
                      ),

                    ],
                  ),
                  scrollDirection: Axis.horizontal,
                ),
              )
            ],
          )
        ],
      ),
    ));
  }
}
