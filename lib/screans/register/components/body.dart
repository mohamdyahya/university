import 'package:flutter/material.dart';
import 'package:university/screans/reservations/my_reservations_screen.dart';
import '../../../components/custom_surfix_icon.dart';
import '../../../components/default_button.dart';
import '../../../constants.dart';
import '../../../size_config.dart';

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
    SizeConfig().init(context);
    return  Scaffold(
    body:Container(
        color: Colors.white,
        padding: EdgeInsets.only(top: 40),
        child: SingleChildScrollView(
          child:
          Column(
            children: [


              Container(
                  width: double.infinity,
                  margin: EdgeInsets.all(20),
                  // padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: kTextWhite,
                    border: Border.all(color: kTextGray),
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
                              style: primaryText
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
                    color: kTextWhite,
                    border: Border.all(color: kTextGray),
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
                    color: kTextWhite,
                    border: Border.all(color: kTextGray),
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
            ],
          ),
        ),

      )
    );
  }

/*
  TextFormField buildNameFormField() {
    return TextFormField(
      keyboardType: TextInputType.name,
      decoration: InputDecoration(
        labelText: "الاسم",
        hintText: "أدخل الاسم هنا",
        labelStyle: TextStyle(color: kTextColor),
        // If  you are using latest version of flutter then lable text and hint text shown like this
        // if you r using flutter less then 1.20.* then maybe this is not working properly
        // floatingLabelBehavior: FloatingLabelBehavior.always,
        prefixIcon: CustomSurffixIcon(svgIcon: "assets/icons/user.svg"),
        border: outlineInputBorder(),
        enabledBorder: outlineInputBorder(),
        focusedBorder: outlineInputBorder(),
        contentPadding: EdgeInsets.symmetric(horizontal: 42, vertical: 10),
      ),
    );
  }
  */

}
