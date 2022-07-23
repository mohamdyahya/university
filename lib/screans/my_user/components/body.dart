import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:university/config.dart';
import 'package:university/screans/app_about/app_info_screen.dart';
import 'package:university/screans/sign_in/sign_in_screen.dart';
import '../../../components/default_button.dart';
import '../../../constants.dart';
import '../../../size_config.dart';
import '../../notification/notification_screen.dart';

class Body extends StatefulWidget {
  @override
  State<Body> createState() => _BodyState();
}
class _BodyState extends State<Body> {

  logout(context) async {
    SharedPreferences sh = await SharedPreferences.getInstance();
    sh.remove(G_use_id);
    sh.remove(G_use_name);
    sh.remove(G_use_token);
    sh.remove(G_use_mobile);
    sh.remove(G_use_image);
    sh.remove(G_use_email);
    sh.clear();
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => SignInScreen()));
  }

  bool _switchValue=false;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: SizedBox(
      width: double.infinity,
      child: SingleChildScrollView(
        child: Padding(
          padding:
              EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
          child: Column(
            children: [
              SizedBox(height: SizeConfig.screenHeight * 0.02),
              Column(
                children: [
                  CircleAvatar(
                    child: Container(
                      alignment: Alignment.bottomRight,
                      padding: EdgeInsets.only(
                          right: getProportionateScreenWidth(16)),
                      child: CircleAvatar(
                        radius: getProportionateScreenWidth(24),
                        backgroundColor: kPrimaryColor,
                        child: IconButton(
                            onPressed: () {},
                            icon: SvgPicture.asset(
                              "assets/icons/edit.svg",
                              color: kTextColor,
                              width: getProportionateScreenWidth(20),
                            )),
                      ),
                    ),
                    radius: getProportionateScreenHeight(96),
                    backgroundImage: NetworkImage(
                        "https://womenss.net/wp-content/uploads/2021/01/8774-2.jpg"),
                  ),
                ],
              ),
              SizedBox(height: SizeConfig.screenHeight * 0.01),
              Text(
                "محمد نور بدوي ",
                style: headingStyleSecond,
              ),
              Text(
                "m.nour.eng@gmail.com ",
              ),
              SizedBox(height: SizeConfig.screenHeight * 0.05),
              InkWell(
                highlightColor: Colors.transparent,
                splashColor: Colors.transparent,
                onTap: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => NotificationScrean()),
                  );
                  },
                child: Row(children: [
                  SvgPicture.asset("assets/icons/bell.svg",
                      height: getProportionateScreenHeight(24), width: getProportionateScreenWidth(24), alignment: Alignment.center),
                  Spacer(
                    flex: 1,
                  ),
                  Text("الإشعارات", style: primaryText),
                  Spacer(
                    flex: 10,
                  ),
                  SvgPicture.asset("assets/icons/arrow_left.svg",
                      height: getProportionateScreenHeight(24), width: getProportionateScreenWidth(24), alignment: Alignment.center),
                ]),
              ),
              Divider(
                color: kTextGray,
                height: SizeConfig.screenHeight * 0.03,
                thickness: 0.5,
              ),
              InkWell(
                highlightColor: Colors.transparent,
                splashColor: Colors.transparent,
                onTap: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => AppInfoScrean()),
                  );
                },
                child: Row(children: [
                  SvgPicture.asset("assets/icons/info.svg",
                      height: 24, width: 24, alignment: Alignment.center),
                  Spacer(
                    flex: 1,
                  ),
                  Text("حول التطبيق", style: primaryText),
                  Spacer(
                    flex: 10,
                  ),
                  SvgPicture.asset("assets/icons/arrow_left.svg",
                      height: getProportionateScreenHeight(24), width: getProportionateScreenWidth(24), alignment: Alignment.center),
                ]),
              ),
              Divider(
                color: kTextGray,
                height: SizeConfig.screenHeight * 0.03,
                thickness: 0.5,
              ),
              InkWell(
                child: Row(children: [
                  SvgPicture.asset("assets/icons/dark.svg",
                      height: getProportionateScreenHeight(24), width: getProportionateScreenWidth(24), alignment: Alignment.center),
                  Spacer(
                    flex: 1,
                  ),
                  Text("الوضع الليلي", style: primaryText),
                  Spacer(
                    flex: 10,
                  ),
                  Container(
                    height: getProportionateScreenHeight(24),
                    child: Transform.scale(
                      scale: 0.8,
                      child: CupertinoSwitch(
                        value: _switchValue,
                        activeColor: kPrimaryColor,
                        onChanged: (value) {
                          setState(() {
                            _switchValue = value;
                          });
                        },
                      ),
                    ),
                  ),
                ]),
              ),
              Divider(
                color: kTextGray,
                height: SizeConfig.screenHeight * 0.03,
                thickness: 0.5,
              ),
              InkWell(

                highlightColor: Colors.transparent,
                splashColor: Colors.transparent,

                onTap: (){
                  logout(context);
                },
                child: Row(children: [
                  SvgPicture.asset("assets/icons/logout.svg",
                      height: getProportionateScreenHeight(24), width: getProportionateScreenWidth(24), alignment: Alignment.center),
                  Spacer(
                    flex: 1,
                  ),
                  Text("تسجيل الخروج", style: primaryText),
                  Spacer(
                    flex: 10,
                  ),
                ]),
              ),
              SizedBox(height: SizeConfig.screenHeight * 0.01),
            ],
          ),
        ),
      ),
    ));
  }
}
