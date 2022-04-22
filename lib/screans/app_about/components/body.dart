import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../../../constants.dart';
import '../../../size_config.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: SizedBox(
      width: double.infinity,
      child: Column(
        children: [
          Spacer(flex: 1),
          Container(
            padding: EdgeInsets.all(50),
            width: 200,
            height: 200,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(50),
                boxShadow: [
                  BoxShadow(
                    color: kShadowColor,
                    offset: Offset(0, 0),
                    blurRadius: 10,
                  ),
                ]),
            child: SvgPicture.asset("assets/icons/logo.svg"),
          ),
          Spacer(flex: 1),
          Text(
              "ريحلي حالك",
              style: headingStyleSecond
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40),
            child: Text(
              "تطبيق اجتماعي خدمي , يهدف إلى تسهيل عملية البحث عن بيوت ضمن منطقة اعزاز , و بنفس الوقت يساعد على تأمين مواصلات يومية من الريف الغربي إلى الشمالي و بالعكس و بأسعار منافسة  ",
              textAlign: TextAlign.center,
            ),
          ),
          Spacer(),

          Text(
              "فكرة وبرمجة",
              style: headingStyleSecond
          ),

          Text(
            "فريق AHF_YMN",
            textAlign: TextAlign.center,
          ),
          Spacer(flex: 3),

        ],
      ),
    ));
  }
}
