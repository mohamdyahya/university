import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:university/constants.dart';

import '../../size_config.dart';

class Reservation_infrmation_page extends StatefulWidget {
  @override
  State<Reservation_infrmation_page> createState() =>
      _Reservation_infrmation_pageState();
}

class _Reservation_infrmation_pageState
    extends State<Reservation_infrmation_page> {

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          padding: EdgeInsets.only(top: 20  , bottom: 0),
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              Container(
                width: double.infinity,
                margin: EdgeInsets.all(4),
                padding: EdgeInsets.all(8),
                decoration: BoxDecoration(
                  color: kTextWhite,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      color: kShadowColor,
                      blurRadius: 10,
                      offset: Offset(0, 0), // changes position of shadow
                    ),
                  ],
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      flex: 1,
                      child: Container(
                        child: Align(
                          child: Text(
                            '50 ليرة تركي',
                            style: headingHome,
                          ),
                          alignment: Alignment.center,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 1,
                      height: 50,
                      child: Container(
                        color: kTextGray,
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: Container(
                        padding: EdgeInsets.all(10),
                        child: Align(
                          child: Text(
                            'رحلة ذهاب وإياب بنفس اليوم',
                            style: primaryText,
                            textAlign: TextAlign.right,
                          ),
                          alignment: Alignment.center,
                        ),
                      ),
                    ),

                  ],
                ),
              ),
              SizedBox(height:20),
              Container(
                width: double.infinity,
                margin: EdgeInsets.all(4),
                padding: EdgeInsets.all(8),
                decoration: BoxDecoration(
                  color: kTextWhite,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      color: kShadowColor,
                      blurRadius: 10,
                      offset: Offset(0, 0), // changes position of shadow
                    ),
                  ],
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      flex: 1,
                      child: Container(
                        padding: EdgeInsets.all(10),
                        child: Align(
                          child: Text(
                            'رحلة ذهاب وإياب بنفس اليوم',
                            style: primaryText,
                            textAlign: TextAlign.right,
                          ),
                          alignment: Alignment.center,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 1,
                      height: 50,
                      child: Container(
                        color: kTextGray,
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: Container(
                        child: Align(
                          child: Text(
                            '50 ليرة تركي',
                            style: headingHome,
                          ),
                          alignment: Alignment.center,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Column(
                children: [
                  Container(
                    margin: EdgeInsets.only(right: 8, top: 32),
                    child: Align(
                      child: Text('أوقات الانطلاق من الغربي إلى الشمالي',
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold)),
                      alignment: Alignment.centerRight,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 10),
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          Container(
                            padding:  EdgeInsets.symmetric(
                                vertical: 0, horizontal: 24),
                            margin: EdgeInsets.symmetric(
                                vertical: 2, horizontal: 8),
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
                            child: Align(
                              child: Text('6:50',
                                  style: TextStyle(
                                    fontSize: 20,
                                  )),
                              alignment: Alignment.center,
                            ),
                          ),
                          Container(
                            padding:  EdgeInsets.symmetric(
                                vertical: 0, horizontal: 24),
                            margin: EdgeInsets.symmetric(
                                vertical: 2, horizontal: 8),
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
                            child: Align(
                              child: Text('6:50',
                                  style: TextStyle(
                                    fontSize: 20,
                                  )),
                              alignment: Alignment.center,
                            ),
                          ),
                          Container(
                            padding:  EdgeInsets.symmetric(
                                vertical: 0, horizontal: 24),
                            margin: EdgeInsets.symmetric(
                                vertical: 2, horizontal: 8),
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
                            child: Align(
                              child: Text('6:50',
                                  style: TextStyle(
                                    fontSize: 20,
                                  )),
                              alignment: Alignment.center,
                            ),
                          ),
                          Container(
                            padding:  EdgeInsets.symmetric(
                                vertical: 0, horizontal: 24),
                            margin: EdgeInsets.symmetric(
                                vertical: 2, horizontal: 8),
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
                            child: Align(
                              child: Text('6:50',
                                  style: TextStyle(
                                    fontSize: 20,
                                  )),
                              alignment: Alignment.center,
                            ),
                          ),

                        ],
                      ),
                    ),
                  ),
                ],
              ),
              Column(
                children: [
                  Container(
                    margin: EdgeInsets.only(right: 8, top: 32),
                    child: Align(
                      child: Text('أوقات العودة من الغربي إلى الشمالي',
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold)),
                      alignment: Alignment.centerRight,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 10),
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          Container(
                            padding:  EdgeInsets.symmetric(
                                vertical: 0, horizontal: 24),
                            margin: EdgeInsets.symmetric(
                                vertical: 2, horizontal: 8),
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
                            child: Align(
                              child: Text('6:50',
                                  style: TextStyle(
                                    fontSize: 20,
                                  )),
                              alignment: Alignment.center,
                            ),
                          ),
                          Container(
                            padding:  EdgeInsets.symmetric(
                                vertical: 0, horizontal: 24),
                            margin: EdgeInsets.symmetric(
                                vertical: 2, horizontal: 8),
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
                            child: Align(
                              child: Text('6:50',
                                  style: TextStyle(
                                    fontSize: 20,
                                  )),
                              alignment: Alignment.center,
                            ),
                          ),
                          Container(
                            padding:  EdgeInsets.symmetric(
                                vertical: 0, horizontal: 24),
                            margin: EdgeInsets.symmetric(
                                vertical: 2, horizontal: 8),
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
                            child: Align(
                              child: Text('6:50',
                                  style: TextStyle(
                                    fontSize: 20,
                                  )),
                              alignment: Alignment.center,
                            ),
                          ),
                          Container(
                            padding:  EdgeInsets.symmetric(
                                vertical: 0, horizontal: 24),
                            margin: EdgeInsets.symmetric(
                                vertical: 2, horizontal: 8),
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
                            child: Align(
                              child: Text('6:50',
                                  style: TextStyle(
                                    fontSize: 20,
                                  )),
                              alignment: Alignment.center,
                            ),
                          ),

                        ],
                      ),
                    ),
                  ),
                ],
              ),

            ],
          ),
        ),
      ),
    );
  }
}
