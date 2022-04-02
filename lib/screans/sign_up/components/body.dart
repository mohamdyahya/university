import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../../../components/socal_card.dart';
import '../../../constants.dart';
import '../../../size_config.dart';
import 'sign_up_form.dart';

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
                    "إنشاء حساب",
                    style: headingStyle2
                ),
                SizedBox(height: SizeConfig.screenHeight * 0.04),
                SignUpForm(),
                SizedBox(height: getProportionateScreenHeight(10)),
                Text(
                  'من خلال الاستمرار في تأكيد موافقتك على الشروط والأحكام الخاصة بنا',
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.caption,
                ),
                SizedBox(height: getProportionateScreenHeight(30)),
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

              ],
            ),
          ),
        ),
      ),
    );
  }
}
