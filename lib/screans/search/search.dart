import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../constants.dart';
import '../../size_config.dart';



class search extends StatefulWidget {
  @override
  State<search> createState() => _searchState();
}

class _searchState extends State<search> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        shadowColor: Colors.black,
        leading: IconButton(icon: Icon(Icons.search),),
        actions: [
          IconButton(onPressed:(){}, icon: Icon(Icons.zoom_out_map))
        ],
      ),
      body:
      SafeArea(child:
        ListView(
          children: [
          Container(
              margin: EdgeInsets.all(20),
              child:
              SingleChildScrollView(
                child:
                Row(
                  children: [
                    Container(
                      width: 80,
                      height: 40,
                      padding: EdgeInsets.only(bottom: 10),
                      decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(10),
                    ),
                      child:
                       Text('شقة',textAlign:TextAlign.center,style: TextStyle(fontSize: 18,color: Colors.white)),

                      ),
                  ],),
                ),
          ),
          Column(
            children: [
              Row(
          children: [
               Container(
          height: getProportionateScreenHeight(142),
      padding:
      EdgeInsets.only(right: getProportionateScreenWidth(16)),
          child: ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
          primary: kTextWhite,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30),
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
                    'https://images.pexels.com/photos/1918291/pexels-photo-1918291.jpeg?auto=compress&cs=tinysrgb&h=750&w=1260',width: 110,height: 110,fit: BoxFit.cover,),
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
                    style: TextStyle(color: Colors.black),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    ),
    ],
    ),
            ],
          ),],
        ),
      ),
    );
  }
}
