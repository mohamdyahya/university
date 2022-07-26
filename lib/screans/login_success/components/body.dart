import 'package:flutter/material.dart';
import 'package:university/components/navigation_bar.dart';
import '../../../components/default_button.dart';
import '../../../constants.dart';
import '../../../size_config.dart';


class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        children: [
          SizedBox(height: SizeConfig.screenHeight * 0.01),
          Image.asset(
            "assets/images/success.png",
            height: SizeConfig.screenHeight * 0.4, //40%
          ),
          SizedBox(height: SizeConfig.screenHeight * 0.04),
          Text(
            "تمّت عملية تسجيل الدخول بنجاح",
            style: TextStyle(  fontSize: getProportionateScreenWidth(20),
              fontWeight: FontWeight.bold,
              color: kPrimaryColor,
              height: 1.5,)

          ),
          SizedBox(height: SizeConfig.screenHeight * 0.08),
          Spacer(),
          SizedBox(
            width: SizeConfig.screenWidth * 0.6,
            child: DefaultButton(
              text: "الصفحة الرئيسية",
              press: () {

                Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => Navigation()));

                /*
                Navigator.pushAndRemoveUntil(
                  context,
                  MaterialPageRoute(builder: (context) => Navigation()),
                      (Route<dynamic> route) => false,
                );*/
              },
            ),
          ),
          Spacer(),
        ],
      ),
    );
  }
}
