import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:university/screans/sign_in/components/sign_form.dart';
import '../../../components/no_account_text.dart';
import '../../../components/socal_card.dart';
import '../../../constants.dart';
import '../../../size_config.dart';


class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: Padding(
          padding:
              EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: SizeConfig.screenHeight * 0.01),
                SvgPicture.asset("assets/icons/logo.svg", height: 80 , width: 80 , alignment: Alignment.center),
                SizedBox(height: SizeConfig.screenHeight * 0.01),
                Text(
                  "تسجيل الدخول",
                   style: headingStyle2
                ),
                SizedBox(height: SizeConfig.screenHeight * 0.08),
                SignForm(),
                SizedBox(height: SizeConfig.screenHeight * 0.04),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("ــــــــــــــــــــ" ,style: TextStyle(color: kSecondaryColor )),
                    Padding(
                      padding:EdgeInsets.symmetric(horizontal: 10),
                      child: Text("تسجيل الدخول باستخدام"),
                    ),
                    Text("ــــــــــــــــــــ" ,style: TextStyle(color: kSecondaryColor )),
                  ],
                ),
                SizedBox(height: SizeConfig.screenHeight * 0.02),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SocalCard(
                      icon: "assets/icons/google-icon.svg",
                      press: () {},
                    ),
                    SocalCard(
                      icon: "assets/icons/facebook-2.svg",
                      press: () {},
                    ),
                  ],
                ),
                SizedBox(height: getProportionateScreenHeight(20)),
                NoAccountText(),
                SizedBox(height: SizeConfig.screenHeight * 0.02),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
