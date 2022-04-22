import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Reservation_infrmation_page extends StatefulWidget {
  @override
  State<Reservation_infrmation_page> createState() =>
      _Reservation_infrmation_pageState();
}

class _Reservation_infrmation_pageState
    extends State<Reservation_infrmation_page> {
  Color color1 = Colors.black;
  Color color2 = Colors.black;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          padding: EdgeInsets.only(top: 20),
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              Center(
                child: Container(
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    border: Border.all(width: 1, color: Colors.white),
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.black,
                  ),
                  // padding: EdgeInsets.all(10),
                  width: 350,
                  height: 50,
                  // alignment: Alignment.centerLeft,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                          decoration: BoxDecoration(
                            border: Border.all(width: 1, color: Colors.black),
                            borderRadius: BorderRadius.circular(10),
                            color: color1,
                          ),
                          //alignment: Alignment.centerRight,
                          width: 150,
                          padding: EdgeInsets.only(left: 10, right: 10),
                          margin: EdgeInsets.only(left: 10),
                          child: TextButton(
                              onPressed: () {
                                setState(() {
                                  color1 = Colors.white30;
                                  color2 = Colors.black87;
                                });
                              },
                              child: Text(
                                'التسجيل على رحلة',
                                style: TextStyle(color: Colors.white),
                              ))),
                      Container(
                        padding: EdgeInsets.all(10),
                        color: Colors.white,
                        width: 2,
                        height: 20,
                      ),
                      Container(
                        decoration: BoxDecoration(
                          color: color2,
                          border: Border.all(width: 1, color: Colors.black),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        width: 150,
                        margin: EdgeInsets.only(left: 10),
                        padding: EdgeInsets.only(left: 10, right: 10),
                        child: TextButton(
                          onPressed: () {
                            setState(() {
                              color2 = Colors.white30;
                              color1 = Colors.black;
                            });
                          },
                          child: Text(
                            'الأسعار والأوقات',
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                width: 350,
                height: 80,
                margin: EdgeInsets.only(top: 20),
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(width: 1, color: Colors.white),
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black12,
                      spreadRadius: 0.3,
                      blurRadius: 5,
                      offset: Offset(-1, 5), // changes position of shadow
                    ),
                  ],
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: 170,
                      height: 80,
                      child: Align(
                        child: Text(
                          '50',
                          style: TextStyle(
                              fontSize: 30, fontWeight: FontWeight.bold),
                        ),
                        alignment: Alignment.center,
                      ),
                    ),
                    SizedBox(
                      width: 1,
                      height: 50,
                      child: Container(
                        color: Colors.black45,
                      ),
                    ),
                    Container(
                      width: 170,
                      height: 80,
                      padding: EdgeInsets.all(10),
                      child: Align(
                        child: Text(
                          'رحلة الذهاب فقط أو الإياب فقط',
                          style: TextStyle(fontSize: 19),
                          textAlign: TextAlign.right,
                        ),
                        alignment: Alignment.center,
                      ),
                    )
                  ],
                ),
              ),
              Container(
                width: 350,
                height: 80,
                margin: EdgeInsets.only(top: 20),
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(width: 1, color: Colors.white),
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black12,
                      spreadRadius: 0.3,
                      blurRadius: 5,
                      offset: Offset(-1, 5), // changes position of shadow
                    ),
                  ],
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: 170,
                      height: 80,
                      padding: EdgeInsets.all(10),
                      child: Align(
                        child: Text(
                          'رحلة الذهاب فقط أو الإياب فقط',
                          style: TextStyle(fontSize: 19),
                          textAlign: TextAlign.right,
                        ),
                        alignment: Alignment.center,
                      ),
                    ),
                    SizedBox(
                      width: 1,
                      height: 50,
                      child: Container(
                        color: Colors.black45,
                      ),
                    ),
                    Container(
                      width: 170,
                      height: 80,
                      child: Align(
                        child: Text(
                          '50',
                          style: TextStyle(
                              fontSize: 30, fontWeight: FontWeight.bold),
                        ),
                        alignment: Alignment.center,
                      ),
                    ),
                  ],
                ),
              ),
              Column(
                children: [
                  Container(
                    margin: EdgeInsets.only(right: 40, top: 30),
                    child: Align(
                      child: Text('أوقات الانطلاق من الغربي إلى الشمالي',
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold)),
                      alignment: Alignment.centerRight,
                    ),
                  ),
                  Container(
                    height: 70,
                    margin: EdgeInsets.only(top: 10),
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          Container(
                            margin: EdgeInsets.symmetric(
                                vertical: 0, horizontal: 15),
                            width: 90,
                            height: 50,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              border: Border.all(width: 1, color: Colors.white),
                              borderRadius: BorderRadius.circular(10),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black12,
                                  spreadRadius: 0.3,
                                  blurRadius: 5,
                                  offset: Offset(
                                      -1, 5), // changes position of shadow
                                ),
                              ],
                            ),
                            child: Align(
                              child: Text('6:50',
                                  style: TextStyle(
                                    fontSize: 30,
                                  )),
                              alignment: Alignment.center,
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.symmetric(
                                vertical: 0, horizontal: 15),
                            width: 90,
                            height: 50,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              border: Border.all(width: 1, color: Colors.white),
                              borderRadius: BorderRadius.circular(10),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black12,
                                  spreadRadius: 0.3,
                                  blurRadius: 5,
                                  offset: Offset(
                                      -1, 5), // changes position of shadow
                                ),
                              ],
                            ),
                            child: Align(
                              child: Text('6:50',
                                  style: TextStyle(
                                    fontSize: 30,
                                  )),
                              alignment: Alignment.center,
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.symmetric(
                                vertical: 0, horizontal: 15),
                            width: 90,
                            height: 50,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              border: Border.all(width: 1, color: Colors.white),
                              borderRadius: BorderRadius.circular(10),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black12,
                                  spreadRadius: 0.3,
                                  blurRadius: 5,
                                  offset: Offset(
                                      -1, 5), // changes position of shadow
                                ),
                              ],
                            ),
                            child: Align(
                              child: Text('6:50',
                                  style: TextStyle(
                                    fontSize: 30,
                                  )),
                              alignment: Alignment.center,
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.symmetric(
                                vertical: 0, horizontal: 15),
                            width: 90,
                            height: 50,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              border: Border.all(width: 1, color: Colors.white),
                              borderRadius: BorderRadius.circular(10),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black12,
                                  spreadRadius: 0.3,
                                  blurRadius: 5,
                                  offset: Offset(
                                      -1, 5), // changes position of shadow
                                ),
                              ],
                            ),
                            child: Align(
                              child: Text('6:50',
                                  style: TextStyle(
                                    fontSize: 30,
                                  )),
                              alignment: Alignment.center,
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.symmetric(
                                vertical: 0, horizontal: 15),
                            width: 90,
                            height: 50,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              border: Border.all(width: 1, color: Colors.white),
                              borderRadius: BorderRadius.circular(10),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black12,
                                  spreadRadius: 0.3,
                                  blurRadius: 5,
                                  offset: Offset(
                                      -1, 5), // changes position of shadow
                                ),
                              ],
                            ),
                            child: Align(
                              child: Text('6:50',
                                  style: TextStyle(
                                    fontSize: 30,
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
                    margin: EdgeInsets.only(right: 40, top: 30),
                    child: Align(
                      child: Text('أوقات الانطلاق من الغربي إلى الشمالي',
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold)),
                      alignment: Alignment.centerRight,
                    ),
                  ),
                  Container(
                    height: 70,
                    margin: EdgeInsets.only(top: 10),
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          Container(
                            margin: EdgeInsets.symmetric(
                                vertical: 0, horizontal: 15),
                            width: 90,
                            height: 50,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              border: Border.all(width: 1, color: Colors.white),
                              borderRadius: BorderRadius.circular(10),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black12,
                                  spreadRadius: 0.3,
                                  blurRadius: 5,
                                  offset: Offset(
                                      -1, 5), // changes position of shadow
                                ),
                              ],
                            ),
                            child: Align(
                              child: Text('6:50',
                                  style: TextStyle(
                                    fontSize: 30,
                                  )),
                              alignment: Alignment.center,
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.symmetric(
                                vertical: 0, horizontal: 15),
                            width: 90,
                            height: 50,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              border: Border.all(width: 1, color: Colors.white),
                              borderRadius: BorderRadius.circular(10),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black12,
                                  spreadRadius: 0.3,
                                  blurRadius: 5,
                                  offset: Offset(
                                      -1, 5), // changes position of shadow
                                ),
                              ],
                            ),
                            child: Align(
                              child: Text('6:50',
                                  style: TextStyle(
                                    fontSize: 30,
                                  )),
                              alignment: Alignment.center,
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.symmetric(
                                vertical: 0, horizontal: 15),
                            width: 90,
                            height: 50,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              border: Border.all(width: 1, color: Colors.white),
                              borderRadius: BorderRadius.circular(10),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black12,
                                  spreadRadius: 0.3,
                                  blurRadius: 5,
                                  offset: Offset(
                                      -1, 5), // changes position of shadow
                                ),
                              ],
                            ),
                            child: Align(
                              child: Text('6:50',
                                  style: TextStyle(
                                    fontSize: 30,
                                  )),
                              alignment: Alignment.center,
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.symmetric(
                                vertical: 0, horizontal: 15),
                            width: 90,
                            height: 50,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              border: Border.all(width: 1, color: Colors.white),
                              borderRadius: BorderRadius.circular(10),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black12,
                                  spreadRadius: 0.3,
                                  blurRadius: 5,
                                  offset: Offset(
                                      -1, 5), // changes position of shadow
                                ),
                              ],
                            ),
                            child: Align(
                              child: Text('6:50',
                                  style: TextStyle(
                                    fontSize: 30,
                                  )),
                              alignment: Alignment.center,
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.symmetric(
                                vertical: 0, horizontal: 15),
                            width: 90,
                            height: 50,
                            padding: EdgeInsets.all(2),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              border: Border.all(width: 1, color: Colors.white),
                              borderRadius: BorderRadius.circular(10),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black12,
                                  spreadRadius: 0.3,
                                  blurRadius: 5,
                                  offset: Offset(
                                      -1, 5), // changes position of shadow
                                ),
                              ],
                            ),
                            child: Align(
                              child: Text('6:50',
                                  style: TextStyle(
                                    fontSize: 30,
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
