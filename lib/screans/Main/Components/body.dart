import 'package:flutter/material.dart';

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
              SingleChildScrollView(
                // padding: EdgeInsets.all(10),
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Container(
                      padding: EdgeInsets.all(10),
                      width: 390,
                      height: 250,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: Image.network(
                          'https://images.pexels.com/photos/1428348/pexels-photo-1428348.jpeg?auto=compress&cs=tinysrgb&h=750&w=1260',
                          fit: BoxFit.fill,
                          // width: 100,
                          // height: 100,
                        ),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(10),
                      width: 390,
                      height: 250,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: Image.network(
                          'https://images.pexels.com/photos/1428348/pexels-photo-1428348.jpeg?auto=compress&cs=tinysrgb&h=750&w=1260',
                          fit: BoxFit.fill,
                          // width: 100,
                          // height: 100,
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              // Padding(
              //     padding: EdgeInsets.only(top: 10, bottom: 10, left: 10),),
              Container(
                alignment: Alignment.bottomRight,
                padding: EdgeInsets.all(20),
                child: Text(
                  'العقارات',
                  textAlign: TextAlign.start,
                  style: TextStyle(
                      fontSize: 40,
                      /* fontFamily: 'RobotoMono'*/
                      fontWeight: FontWeight.bold),
                ),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Column(
                      children: [
                        Container(
                          padding: EdgeInsets.all(15),
                          child: MaterialButton(
                            onPressed: () {},
                            color: Color(0xffFFEDA6),
                            height: 70,
                            minWidth: 40,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Column(
                              children: [
                                Icon(
                                  Icons.home,
                                  color: Color(0xff2B2B2B),
                                  size: 30,
                                ),
                              ],
                            ),
                          ),
                        ),
                        Container(
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
                          padding: EdgeInsets.all(15),
                          child: MaterialButton(
                            onPressed: () {},
                            color: Color(0xffFFEDA6),
                            height: 70,
                            minWidth: 40,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Column(
                              children: [
                                Icon(
                                  Icons.home,
                                  color: Color(0xff2B2B2B),
                                  size: 30,
                                ),
                              ],
                            ),
                          ),
                        ),
                        Container(
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
                          padding: EdgeInsets.all(15),
                          child: MaterialButton(
                            onPressed: () {},
                            color: Color(0xffFFEDA6),
                            height: 70,
                            minWidth: 40,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Column(
                              children: [
                                Icon(
                                  Icons.home,
                                  color: Color(0xff2B2B2B),
                                  size: 30,
                                ),
                              ],
                            ),
                          ),
                        ),
                        Container(
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
                          padding: EdgeInsets.all(15),
                          child: MaterialButton(
                            onPressed: () {},
                            color: Color(0xffFFEDA6),
                            height: 70,
                            minWidth: 40,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Column(
                              children: [
                                Icon(
                                  Icons.home,
                                  color: Color(0xff2B2B2B),
                                  size: 30,
                                ),
                              ],
                            ),
                          ),
                        ),
                        Container(
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
                          padding: EdgeInsets.all(15),
                          child: MaterialButton(
                            onPressed: () {},
                            color: Color(0xffFFEDA6),
                            height: 70,
                            minWidth: 40,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Column(
                              children: [
                                Icon(
                                  Icons.home,
                                  color: Color(0xff2B2B2B),
                                  size: 30,
                                ),
                              ],
                            ),
                          ),
                        ),
                        Container(
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
                          padding: EdgeInsets.all(15),
                          child: MaterialButton(
                            onPressed: () {},
                            color: Color(0xffFFEDA6),
                            height: 70,
                            minWidth: 40,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Column(
                              children: [
                                Icon(
                                  Icons.home,
                                  color: Color(0xff2B2B2B),
                                  size: 30,
                                ),
                              ],
                            ),
                          ),
                        ),
                        Container(
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
                          padding: EdgeInsets.all(15),
                          child: MaterialButton(
                            onPressed: () {},
                            color: Color(0xffFFEDA6),
                            height: 70,
                            minWidth: 40,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Column(
                              children: [
                                Icon(
                                  Icons.home,
                                  color: Color(0xff2B2B2B),
                                  size: 30,
                                ),
                              ],
                            ),
                          ),
                        ),
                        Container(
                          child: Text(
                            "شقة",
                            style: TextStyle(fontSize: 18),
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              )
            ],
          ),
          Container(
            padding: EdgeInsets.only(top: 20, left: 20, right: 20),
            alignment: Alignment.bottomRight,
            child: Text(
              "التسجيل على رحلة  ",
              textAlign: TextAlign.start,
              style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
            ),
          ),
          ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              primary: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30),
              ),
            ),
            child: Container(
              child: Row(
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
                    // padding: EdgeInsets.only(left: 20),
                    child: Column(
                      children: [
                        Container(
                          padding: EdgeInsets.only(left: 20),
                          child: Text(
                            "تسجيل على رحلة",
                            textAlign: TextAlign.right,
                            style: TextStyle(
                              fontSize: 20,
                              color: Color(0xff2B2B2B),
                            ),
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.only(left: 20),
                          child: Text(
                            "ذهاب واياب  ",
                            textAlign: TextAlign.right,
                            style: TextStyle(
                              fontStyle: FontStyle.normal,
                              fontSize: 20,
                              color: Color(0xff2B2B2B),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(right: 20),
                    child: Icon(
                      Icons.arrow_forward_ios_outlined,
                      size: 30,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            width: double.infinity,
            padding: EdgeInsets.all(10),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'اخرالعقارات',
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
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                Container(
                  padding: EdgeInsets.all(10),
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
                        children: [
                          Container(
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
                                  children: [
                                    Container(
                                      padding:
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
                                      children: [
                                        Icon(
                                          Icons.room_outlined,
                                          color: Colors.black,
                                          size: 20,
                                        ),
                                        Text(
                                          " عدد الغرف",
                                          textAlign: TextAlign.right,
                                          style: TextStyle(
                                            fontSize: 15,
                                            color: Color(0xff2B2B2B),
                                          ),
                                        ),
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        Icon(
                                          Icons.room_outlined,
                                          color: Colors.black,
                                          size: 20,
                                        ),
                                        Text(
                                          " عدد الغرف",
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
                        ],
                      ),
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(10),
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
                        children: [
                          Container(
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
                                  children: [
                                    Container(
                                      padding:
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
                                      children: [
                                        Icon(
                                          Icons.room_outlined,
                                          color: Colors.black,
                                          size: 20,
                                        ),
                                        Text(
                                          " عدد الغرف",
                                          textAlign: TextAlign.right,
                                          style: TextStyle(
                                            fontSize: 15,
                                            color: Color(0xff2B2B2B),
                                          ),
                                        ),
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        Icon(
                                          Icons.room_outlined,
                                          color: Colors.black,
                                          size: 20,
                                        ),
                                        Text(
                                          " عدد الغرف",
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
                        ],
                      ),
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(10),
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
                        children: [
                          Container(
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
                                  children: [
                                    Container(
                                      padding:
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
                                      children: [
                                        Icon(
                                          Icons.room_outlined,
                                          color: Colors.black,
                                          size: 20,
                                        ),
                                        Text(
                                          " عدد الغرف",
                                          textAlign: TextAlign.right,
                                          style: TextStyle(
                                            fontSize: 15,
                                            color: Color(0xff2B2B2B),
                                          ),
                                        ),
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        Icon(
                                          Icons.room_outlined,
                                          color: Colors.black,
                                          size: 20,
                                        ),
                                        Text(
                                          " عدد الغرف",
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
                        ],
                      ),
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(10),
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
                        children: [
                          Container(
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
                                  children: [
                                    Container(
                                      padding:
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
                                      children: [
                                        Icon(
                                          Icons.room_outlined,
                                          color: Colors.black,
                                          size: 20,
                                        ),
                                        Text(
                                          " عدد الغرف",
                                          textAlign: TextAlign.right,
                                          style: TextStyle(
                                            fontSize: 15,
                                            color: Color(0xff2B2B2B),
                                          ),
                                        ),
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        Icon(
                                          Icons.room_outlined,
                                          color: Colors.black,
                                          size: 20,
                                        ),
                                        Text(
                                          " عدد الغرف",
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
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.all(20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text(
                      " عملائنا",
                      textAlign: TextAlign.right,
                      style:
                          TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                SingleChildScrollView(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        padding: EdgeInsets.only(left: 10),
                        child: ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            primary: Colors.white,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30),
                            ),
                          ),
                          child: Container(
                            child: Image.asset('images/2.jpg'),
                            width: 150,
                            height: 150,
                          ),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.all(10),
                        child: ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            primary: Colors.white,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30),
                            ),
                          ),
                          child: Container(
                            child: Image.asset('images/3.jpg'),
                            width: 150,
                            height: 150,
                          ),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.all(10),
                        child: ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            primary: Colors.white,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30),
                            ),
                          ),
                          child: Container(
                            child: Image.asset('images/4.jpg'),
                            width: 150,
                            height: 150,
                          ),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.all(10),
                        child: ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            primary: Colors.white,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30),
                            ),
                          ),
                          child: Container(
                            child: Image.asset('images/5.jpg'),
                            width: 150,
                            height: 150,
                          ),
                        ),
                      ),
                    ],
                  ),
                  scrollDirection: Axis.horizontal,
                )
              ],
            ),
          )
        ],
      ),
    ));
  }
}
