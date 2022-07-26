import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body:
        SafeArea(
          child: Column(
            children: [
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,children: [
                Container(child: Image.asset('assets/images/logo.jpg',width: 100,height: 100,)),
                Container(
                  margin: EdgeInsets.only(right: 20),
                  child: Column(crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text('جامعة حلب في المناطق المحررة   ',style: TextStyle(fontWeight: FontWeight.bold),),
                      Text('كلية الهندسة المعلوماتية',style: TextStyle(fontWeight: FontWeight.bold))
                    ],
                  ),
                ),

              ],),
              Container(child: SvgPicture.asset('assets/icons/Bus icon.svg',width: 100,height: 100,color: Colors.yellow,)),
              Container(child: Text('ريحلي حالك',style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),),
              Container(child: Text('نظام لأتمتة العقارات والموصلات ',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold)),),
              Container(child: Text('مشروع تخرج أعد لنيل درجة الإجازة في الهندسة المعلوماتية ',style: TextStyle(fontSize: 15,)),),
              Container(margin: EdgeInsets.only(top: 30),child: Text(':إعداد الطلاب',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold)),),
              Container(child: Text('هشام تقوى- عبدالله جقير- فطوم شلار ',style: TextStyle(fontSize: 15,)),),
              Container(child: Text('محمد يحيى- يامن الباكير- محمد نور بدوي ',style: TextStyle(fontSize: 15,)),),
              Container(margin: EdgeInsets.only(top: 20),child: Text(' :إشراف',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold)),),
              Container(child: Text('م.محمد أباز',style: TextStyle(fontSize: 15,)),),
              Container(margin: EdgeInsets.only(top: 20),child: Text('العام الدراسي :2021-2022',style: TextStyle(fontSize: 15,)),),
            ],
          ),
        )
    );
  }
}


