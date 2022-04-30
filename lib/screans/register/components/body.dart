
import 'package:flutter/material.dart';

class Body extends StatefulWidget {

  @override
  State<Body> createState() => _BodyState();
}
class NewObject {
  final String title;
  final IconData icon;
  NewObject(this.title, this.icon);
}


class _BodyState extends State<Body> {
  Color color1 = Colors.black;
  Color color2 = Colors.black;
  static final List<NewObject> items = <NewObject>[
    NewObject('مكان الانطلاق', Icons.location_city_outlined),
    NewObject('Apple', Icons.access_alarms),
    NewObject('Banana', Icons.mail),
    NewObject('Orange', Icons.account_balance_wallet),
    NewObject('Other Fruit', Icons.account_box),
  ];
  static final List<NewObject> items1 = <NewObject>[
    NewObject('الوجهة', Icons.location_city_outlined),
    NewObject('Apple', Icons.access_alarms),
    NewObject('Banana', Icons.mail),
    NewObject('Orange', Icons.account_balance_wallet),
    NewObject('Other Fruit', Icons.account_box),
  ];
  static final List<NewObject> items2 = <NewObject>[
    NewObject('وقت الانطلاق', Icons.location_city_outlined),
    NewObject('Apple', Icons.access_alarms),
    NewObject('Banana', Icons.mail),
    NewObject('Orange', Icons.account_balance_wallet),
    NewObject('Other Fruit', Icons.account_box),
  ];
  NewObject value = items.first;
  NewObject value1 = items1.first;
  NewObject value2=items2.first;
  String select= 'one';
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        body:Container(
          color: Colors.white,
          padding: EdgeInsets.only(top: 40),
          child: SingleChildScrollView(
            child:
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Stack(
                  children: <Widget>[
                    Container(
                      width: 400,
                      height: 50,
                      margin: EdgeInsets.only(bottom: 20,right: 20,left: 20,top: 45),
                      // padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: Colors.white,
                        border: Border.all(color: Colors.black38),
                      ),
                      child: TextField(
                        // strutStyle: ,
                        maxLines: 1,
                        decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.white,
                            ),
                            borderRadius: BorderRadius.circular(1.0),
                          ),
                          hintText: "قم بأدخال اسمك",
                        ),
                        autofocus: false,
                      ),
                    ),
                    Positioned(
                      top: 20.0,
                      left: 20.0,
                      right: 40.0,
                      child: Row(
                        children: <Widget>[
                          Flexible(
                            child: Container(
                              // padding: EdgeInsets.symmetric(
                              //   horizontal: 2.0,
                              // ),
                              decoration:  BoxDecoration(
                                // border: InputBorder.none,
                                color: Colors.white,
                              ),
                              child: Text(
                                'الاسم',
                                style: TextStyle(
                                    color: Colors.black45,
                                    fontSize: 18.0,
                                    fontWeight: FontWeight.bold
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                Container(
                    width: double.infinity,
                    margin: EdgeInsets.all(20),
                    // padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: Colors.white,
                      border: Border.all(color: Colors.black38),
                    ),
                    child:  DropdownButtonHideUnderline(
                      child: DropdownButton<NewObject>(
                        value: value, // currently selected item
                        items: items
                            .map((item) => DropdownMenuItem<NewObject>(
                          child: Row(
                            children: [
                              Icon(item.icon),
                              const SizedBox(width: 8),
                              Text(
                                item.title,
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20,
                                ),
                              ),
                            ],
                          ),
                          value: item,
                        ))
                            .toList(),
                        onChanged: (value) => setState(() {
                          if(value!=null){
                            this.value = value;
                          }
                        }),
                      ),
                    )
                ),
                Container(
                    width: double.infinity,
                    margin: EdgeInsets.all(20),
                    // padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: Colors.white,
                      border: Border.all(color: Colors.black38),
                    ),
                    child:  DropdownButtonHideUnderline(
                      child: DropdownButton<NewObject>(
                        value: value1, // currently selected item
                        items: items1
                            .map((item1) => DropdownMenuItem<NewObject>(
                          child: Row(
                            children: [
                              Icon(item1.icon),
                              const SizedBox(width: 8),
                              Text(
                                item1.title,
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20,
                                ),
                              ),
                            ],
                          ),
                          value: item1,
                        ))
                            .toList(),
                        onChanged: (value) => setState(() {
                          if(value!=null){
                            this.value1 = value;
                          }
                        }),
                      ),
                    )
                ),
                Container(
                    width: double.infinity,
                    margin: EdgeInsets.all(20),
                    // padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: Colors.white,
                      border: Border.all(color: Colors.black38),
                    ),
                    child:  DropdownButtonHideUnderline(
                      child: DropdownButton<NewObject>(
                        value: value2, // currently selected item
                        items: items2
                            .map((item1) => DropdownMenuItem<NewObject>(
                          child: Row(
                            children: [
                              Icon(item1.icon),
                              const SizedBox(width: 8),
                              Text(
                                item1.title,
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20,
                                ),
                              ),
                            ],
                          ),
                          value: item1,
                        ))
                            .toList(),
                        onChanged: (value) => setState(() {
                          if(value!=null){
                            this.value2 = value;
                          }
                        }),
                      ),
                    )
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Row(
                      children: [
                        Radio(value: 'one', groupValue: select, onChanged: (value){setState(() {
                          if(value!=null)
                            select='one';
                        });}),
                        Text('ذهاب'),
                      ],
                    ),
                    Row(
                      children: [
                        Radio(value: 'two', groupValue: select, onChanged: (value){setState(() {
                          if(value!=null)
                            select='two';
                        });}),
                        Text('إياب'),
                      ],
                    ),
                    Row(
                      children: [
                        Radio(value: 'three', groupValue: select, onChanged:(value){setState(() {
                          if(value!=null)
                            select='three';
                        });}),
                        Text('ذهاب وإياب'),
                      ],
                    ),
                  ],
                ),



                Container(
                  height: 50,
                  width: 250,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: Colors.yellowAccent[400],
                    border: Border.all(color: Colors.black38),
                  ),
                  child: Center(child: Text("التسجيل على رحلة ",style: TextStyle(fontSize: 20),)),
                )

              ],
            ),
          ),

        )
    );
  }
}
