import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../../../components/default_button.dart';
import '../../../constants.dart';
import '../../../size_config.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: SizedBox(
      width: double.infinity,
      child: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
          child: Column(
            children: [
              SizedBox(height: SizeConfig.screenHeight * 0.02),
              Container(
                height: getProportionateScreenHeight(300),
                width: getProportionateScreenWidth(300),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: [
                      BoxShadow(
                        offset: Offset(0, 0),
                        blurRadius: 10,
                        color: kShadowColor,
                      )
                    ]),
                child: Column(
                  children: [
                    SizedBox(height: SizeConfig.screenHeight * 0.05),
                    SvgPicture.asset("assets/icons/done.svg", height: getProportionateScreenHeight(160) , width: getProportionateScreenWidth(160) , alignment: Alignment.center),
                    SizedBox(height: SizeConfig.screenHeight * 0.02),
                    Text(
                      "تم الحجز بنجاح ",
                      style: headingStyleSecond,
                    ),
                    Text(
                      "على رحلة يوم غد إلى اعزاز ",
                      style: TextStyle(
                          color: kTextColor),
                    ),
                  ],
                ),
              ),
              SizedBox(height: SizeConfig.screenHeight * 0.06),
              Row(children: [
                Text(
                  "مكان الانطلاق ",
                  textAlign: TextAlign.center,
                ),
                Spacer(),
                Text(
                  "سرمدا ",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: kTextColor),
                ),
              ]),
              Divider(
                color: kTextGray,
                height: SizeConfig.screenHeight * 0.02,
                thickness: 0.5,
              ),
              Row(children: [
                Text(
                  "وقت الانطلاق ",
                  textAlign: TextAlign.center,
                ),
                Spacer(),
                Text(
                  "7:30 ",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: kTextColor),
                ),
              ]),
              Divider(
                color: kTextGray,
                height: SizeConfig.screenHeight * 0.02,
                thickness: 0.5,
              ),
              Row(children: [
                Text(
                  "الوجهة",
                  textAlign: TextAlign.center,
                ),
                Spacer(),
                Text(
                  "اعزاز ",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: kTextColor),
                ),
              ]),
              Divider(
                color: kTextGray,
                height: SizeConfig.screenHeight * 0.02,
                thickness: 0.5,
              ),
              Row(children: [
                Text(
                  "التكلفة ",
                  textAlign: TextAlign.center,
                ),
                Spacer(),
                Text(
                  "40 ليرة ",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: kTextColor),
                ),
              ]),
              Divider(
                color: kTextGray,
                height: SizeConfig.screenHeight * 0.02,
                thickness: 0.5,
              ),
              SizedBox(height: SizeConfig.screenHeight * 0.04),
              DefaultButton(
                text: "للتواصل مع السائق",
                press: () {},
              ),
              SizedBox(height: SizeConfig.screenHeight * 0.01),
            ],
          ),
        ),
      ),
    ));
  }
}
