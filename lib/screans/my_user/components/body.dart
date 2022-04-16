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

              Column(
                children: [
                  CircleAvatar(
                    child:Container(
                      alignment: Alignment.bottomRight,
                      padding: EdgeInsets.only(right: 20),
                      child: CircleAvatar(
                        radius: 25,
                        backgroundColor: kPrimaryColor,
                        child: IconButton(
                            onPressed: () {}, icon: Icon(Icons.edit,color: kTextColor,)),
                      ),
                    ) ,
                    radius: 130,
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
                child: Row(children: [
                  SvgPicture.asset("assets/icons/noti.svg", height: 24 , width: 24 , alignment: Alignment.center),
                  Spacer(
                    flex: 1,
                  ),
                  Text("الإشعارات",
                      style: primaryText),
                  Spacer(
                    flex: 10,
                  ),
                  SvgPicture.asset("assets/icons/arrow_left.svg", height: 24 , width: 24 , alignment: Alignment.center),
                ]),
              ),
              Divider(
                color: kTextGray,
                height: SizeConfig.screenHeight * 0.03,
                thickness: 0.5,
              ),
              InkWell(
                child: Row(children: [
                  SvgPicture.asset("assets/icons/info.svg", height: 24 , width: 24 , alignment: Alignment.center),
                  Spacer(
                    flex: 1,
                  ),
                  Text("حول التطبيق",
                      style: primaryText),
                  Spacer(flex: 10,),
                  SvgPicture.asset("assets/icons/arrow_left.svg", height: 24 , width: 24 , alignment: Alignment.center),
                ]),
              ),
              Divider(
                color: kTextGray,
                height: SizeConfig.screenHeight * 0.03,
                thickness: 0.5,
              ),
              InkWell(
                child: Row(children: [

                  SvgPicture.asset("assets/icons/dark.svg", height: 24 , width: 24 , alignment: Alignment.center),
                  Spacer(
                    flex: 1,
                  ),
                  Text("الوضع الليلي",
                      style: primaryText),
                  Spacer(
                    flex: 10,
                  ),

                ]),
              ),
              Divider(
                color: kTextGray,
                height: SizeConfig.screenHeight * 0.03,
                thickness: 0.5,
              ),
              InkWell(
                child: Row(children: [
                  SvgPicture.asset("assets/icons/logout.svg", height: 24 , width: 24 , alignment: Alignment.center),
                  Spacer(
                    flex: 1,
                  ),
                  Text("تسجيل الخروج",
                      style: primaryText),
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
