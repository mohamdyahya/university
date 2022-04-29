import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter_svg/svg.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../../constants.dart';
int activeIndex=0;
final List<String> imageList = [
  "assets/images/2.jpg",
  "assets/images/3.jpg",
  "assets/images/4.jpg",
  "assets/images/5.jpg",
  "assets/images/6.jpg"
];
Widget buildIndicator() =>AnimatedSmoothIndicator(
  activeIndex: activeIndex,
  count: imageList.length,
  effect: ExpandingDotsEffect(
    dotWidth: 10,
    dotHeight: 10,
    dotColor: Colors.white,
    activeDotColor: kPrimaryColor

  ),
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
                margin: EdgeInsets.only(top: 15,left: 10,right: 10,bottom: 0),
                child: Column(
                  children: [
                    Stack(children: [
                    CarouselSlider.builder(
                      itemCount: imageList.length,
                      options: CarouselOptions(
                        enableInfiniteScroll: false,
                        viewportFraction: 1,
                        enlargeCenterPage: true,
                        height: 250,
                        // reverse: true,
                        aspectRatio: 0.5,
                        onPageChanged: (index,reason){
                          setState(() {
                            activeIndex=index;
                          });
                        }
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
                      Positioned(child: buildIndicator(),bottom: 10,left: 140,),
                    ],),
                  ],
                ),
              ),

              // Padding(
              //     padding: EdgeInsets.only(top: 10, bottom: 10, left: 10),),
              Container(
                alignment: Alignment.bottomRight,
                padding: EdgeInsets.only(right: 20),
                child: Text(
                  'العقارات',
                  textAlign: TextAlign.start,
                  style: TextStyle(
                      fontSize: 25,
                      /* fontFamily: 'RobotoMono'*/
                      fontWeight: FontWeight.bold),
                ),
              ),
              Container(
                margin: EdgeInsets.only(right: 20),
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Column(
                        children: [
                          Container(
                            margin: EdgeInsets.only(left: 20),
                            child: MaterialButton(
                              onPressed: () {},
                              color: Color(0xffFFEDA6),
                              height: 70,
                              minWidth: 40,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Icon(
                                Icons.home,
                                color: Color(0xff2B2B2B),
                                size: 30,
                              ),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 20),
                            child: Text(
                              "شقة",
                              style: TextStyle(fontSize: 18),
                            ),
                          )
                        ],
                      ),
                      Column(
                        children: [
                          Container(
                            margin: EdgeInsets.only(left: 20),
                            child: MaterialButton(
                              onPressed: () {},
                              color: Color(0xffFFEDA6),
                              height: 70,
                              minWidth: 40,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Icon(
                                Icons.home,
                                color: Color(0xff2B2B2B),
                                size: 30,
                              ),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 20),
                            child: Text(
                              "شقة",
                              style: TextStyle(fontSize: 18),
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
            padding: EdgeInsets.only( right: 20),
            alignment: Alignment.bottomRight,
            child: Text(
              "التسجيل على رحلة  ",
              textAlign: TextAlign.start,
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 20,right: 20),
            decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                      color: Colors.black12,
                      spreadRadius: 0.5,
                      blurRadius: 15,
                      offset: Offset(0, 2) // changes position of shadow
                  )]),
            child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                primary: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
              child: Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      padding: EdgeInsets.only(left: 20),
                      alignment: Alignment.centerRight,
                      height: 120,
                      width: 150,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: Image.network(
                            'https://images.pexels.com/photos/3847770/pexels-photo-3847770.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940'),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 45),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "تسجيل على رحلة",
                            textAlign: TextAlign.right,
                            style: TextStyle(
                              fontSize: 16,
                              color: Color(0xff2B2B2B),
                            ),
                          ),
                          Text(
                            "ذهاب واياب  ",
                            textAlign: TextAlign.right,
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontStyle: FontStyle.normal,
                              fontSize: 16,
                              color: Color(0xff2B2B2B),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Icon(
                      Icons.arrow_forward_ios_outlined,
                      size: 20,
                      color: Colors.black,
                    ),
                  ],
                ),
              ),
            ),
          ),
          Container(
            width: double.infinity,
            padding: EdgeInsets.only(right: 20),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'آخرالعقارات',
                    textAlign: TextAlign.start,
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      'الكل',
                      style: TextStyle(
                          fontSize: 20,
                          color: Colors.yellow,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ]),
          ),
          Container(
            height: 130,
            margin: EdgeInsets.only(left: 20),
            decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                      color: Colors.black12,
                      spreadRadius: 0.9,
                      blurRadius: 50,
                      offset: Offset(0, 0) // changes position of shadow
                  )]),
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Container(
                    height: 125,
                    padding: EdgeInsets.only(right: 20),
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        primary: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                      ),
                      child: Row(
                        children: [
                          Container(
                            //padding: EdgeInsets.only(left: 20),
                            alignment: Alignment.centerLeft,
                            height: 120,
                            width: 150,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(20),
                              child: Image.network(
                                  'https://images.pexels.com/photos/1918291/pexels-photo-1918291.jpeg?auto=compress&cs=tinysrgb&h=750&w=1260'),
                            ),
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                margin:
                                EdgeInsets.only(left: 10, right: 10),
                                child: Text(
                                  "شقة للأجار",
                                  textAlign: TextAlign.right,
                                  style: TextStyle(
                                    fontSize: 20,
                                    color: Color(0xff2B2B2B),
                                  ),
                                ),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Container(
                                    margin: EdgeInsets.only(left: 5,right: 10),
                                    color:Colors.yellowAccent[100],
                                    child: Icon(
                                      Icons.room_outlined,
                                      color: Colors.black,
                                      size: 20,
                                    ),
                                  ),
                                  Text(
                                    " 4 غرف",
                                    textAlign: TextAlign.right,
                                    style: TextStyle(
                                      fontSize: 15,
                                      color: Color(0xff2B2B2B),
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Container(
                                    margin: EdgeInsets.only(left: 5,right: 10),
                                    color:Colors.yellowAccent[100],
                                    child: Icon(
                                      Icons.room_outlined,
                                      color: Colors.black,
                                      size: 20,
                                    ),
                                  ),
                                  Text(
                                    " 125 متر",
                                    textAlign: TextAlign.right,
                                    style: TextStyle(
                                      fontSize: 15,
                                      color: Color(0xff2B2B2B),
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),Container(
                    height: 125,
                    padding: EdgeInsets.only(right: 20),
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        primary: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                      ),
                      child: Row(
                        children: [
                          Container(
                            //padding: EdgeInsets.only(left: 20),
                            alignment: Alignment.centerLeft,
                            height: 120,
                            width: 150,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(20),
                              child: Image.network(
                                  'https://images.pexels.com/photos/1918291/pexels-photo-1918291.jpeg?auto=compress&cs=tinysrgb&h=750&w=1260'),
                            ),
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                margin:
                                EdgeInsets.only(left: 10, right: 10),
                                child: Text(
                                  "شقة للأجار",
                                  textAlign: TextAlign.right,
                                  style: TextStyle(
                                    fontSize: 20,
                                    color: Color(0xff2B2B2B),
                                  ),
                                ),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Container(
                                    margin: EdgeInsets.only(left: 5,right: 10),
                                    color:Colors.yellowAccent[100],
                                    child: Icon(
                                      Icons.room_outlined,
                                      color: Colors.black,
                                      size: 20,
                                    ),
                                  ),
                                  Text(
                                    " 4 غرف",
                                    textAlign: TextAlign.right,
                                    style: TextStyle(
                                      fontSize: 15,
                                      color: Color(0xff2B2B2B),
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Container(
                                    margin: EdgeInsets.only(left: 5,right: 10),
                                    color:Colors.yellowAccent[100],
                                    child: Icon(
                                      Icons.room_outlined,
                                      color: Colors.black,
                                      size: 20,
                                    ),
                                  ),
                                  Text(
                                    " 125 متر",
                                    textAlign: TextAlign.right,
                                    style: TextStyle(
                                      fontSize: 15,
                                      color: Color(0xff2B2B2B),
                                    ),
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
                margin: EdgeInsets.only(right: 20),
                child:
                  Text(
                    " عملائنا",
                    textAlign: TextAlign.right,
                    style:
                        TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
                  ),
              ),
              Container(
                height: 130,
                margin: EdgeInsets.only(bottom: 20,left: 20,right: 20),
                child: SingleChildScrollView(
                  child: Row(
                    children: [
                      Container(
                        padding: EdgeInsets.all(5),
                        margin: EdgeInsets.symmetric(horizontal: 10),
                        width: 120,
                        height: 120,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(width: 1, color: Colors.white),
                          borderRadius: BorderRadius.circular(20),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black12,
                              spreadRadius: 0.3,
                              blurRadius: 5,
                              offset: Offset(-1, 5), // changes position of shadow
                            ),
                          ],
                        ),
                        child: SvgPicture.asset("assets/icons/Heart Icon.svg"),
                ),
                      Container(
                        padding: EdgeInsets.all(5),
                        margin: EdgeInsets.symmetric(horizontal: 10),
                        width: 120,
                        height: 120,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(width: 1, color: Colors.white),
                          borderRadius: BorderRadius.circular(20),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black12,
                              spreadRadius: 0.3,
                              blurRadius: 5,
                              offset: Offset(-1, 5), // changes position of shadow
                            ),
                          ],
                        ),
                        child: SvgPicture.asset("assets/icons/Heart Icon.svg"),
                      ),
                      Container(
                        padding: EdgeInsets.all(5),
                        margin: EdgeInsets.symmetric(horizontal: 10),
                        width: 120,
                        height: 120,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(width: 1, color: Colors.white),
                          borderRadius: BorderRadius.circular(20),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black12,
                              spreadRadius: 0.3,
                              blurRadius: 5,
                              offset: Offset(-1, 5), // changes position of shadow
                            ),
                          ],
                        ),
                        child: SvgPicture.asset("assets/icons/Heart Icon.svg"),
                      ),
                      Container(
                        padding: EdgeInsets.all(5),
                        margin: EdgeInsets.symmetric(horizontal: 10),
                        width: 120,
                        height: 120,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(width: 1, color: Colors.white),
                          borderRadius: BorderRadius.circular(20),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black12,
                              spreadRadius: 0.3,
                              blurRadius: 5,
                              offset: Offset(-1, 5), // changes position of shadow
                            ),
                          ],
                        ),
                        child: SvgPicture.asset("assets/icons/Heart Icon.svg"),
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
