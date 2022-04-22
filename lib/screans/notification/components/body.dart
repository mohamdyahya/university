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
      child: ListView(scrollDirection: Axis.vertical, children: [
        InkWell(
          child: Container(
            height: getProportionateScreenHeight(130),
            margin: EdgeInsets.all(10),
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: kTextWhite,
              boxShadow: [
                BoxShadow(
                  offset: Offset(0, 0),
                  blurRadius: 10,
                  color: kShadowColor,
                )
              ],
            ),
            child: Column(children: [
              Container(
                alignment: Alignment.topRight,
                child: Text("شقة للإيجار",
                    style: primaryText),
              ),
              Container(
                alignment: Alignment.center,
                child: Text(
                  "شقة جديدة لللإيجار ،5غرف و منتفعات ، ديكور جديد ، مطبخ كبير ، طابق ثاني ، فيها شرفة مطلة على المحيط الهادي ",
                  textAlign: TextAlign.right,
                ),
              ),
              Container(
                alignment: Alignment.bottomLeft,
                child: Text(
                  "اليوم : 6:00",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    fontSize: getProportionateScreenWidth(10),
                  ),
                ),
              ),
            ]),
          ),
        ),
        InkWell(
          child: Container(
            height: getProportionateScreenHeight(130),
            margin: EdgeInsets.all(10),
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: kTextWhite,
              boxShadow: [
                BoxShadow(
                  offset: Offset(0, 0),
                  blurRadius: 10,
                  color: kShadowColor,
                )
              ],
            ),
            child: Column(children: [
              Container(
                alignment: Alignment.topRight,
                child: Text("شقة للإيجار",
                    style: primaryText),
              ),
              Container(
                alignment: Alignment.center,
                child: Text(
                  "شقة جديدة لللإيجار ،5غرف و منتفعات ، ديكور جديد ، مطبخ كبير ، طابق ثاني ، فيها شرفة مطلة على المحيط الهادي ",
                  textAlign: TextAlign.right,
                ),
              ),
              Container(
                alignment: Alignment.bottomLeft,
                child: Text(
                  "اليوم : 6:00",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    fontSize: getProportionateScreenWidth(10),
                  ),
                ),
              ),
            ]),
          ),
        ),
        InkWell(
          child: Container(
            height: getProportionateScreenHeight(130),
            margin: EdgeInsets.all(10),
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: kTextWhite,
              boxShadow: [
                BoxShadow(
                  offset: Offset(0, 0),
                  blurRadius: 10,
                  color: kShadowColor,
                )
              ],
            ),
            child: Column(children: [
              Container(
                alignment: Alignment.topRight,
                child: Text("شقة للإيجار",
                    style: primaryText),
              ),
              Container(
                alignment: Alignment.center,
                child: Text(
                  "شقة جديدة لللإيجار ،5غرف و منتفعات ، ديكور جديد ، مطبخ كبير ، طابق ثاني ، فيها شرفة مطلة على المحيط الهادي ",
                  textAlign: TextAlign.right,
                ),
              ),
              Container(
                alignment: Alignment.bottomLeft,
                child: Text(
                  "اليوم : 6:00",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    fontSize: getProportionateScreenWidth(10),
                  ),
                ),
              ),
            ]),
          ),
        ),
        InkWell(
          child: Container(
            height: getProportionateScreenHeight(130),
            margin: EdgeInsets.all(10),
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: kTextWhite,
              boxShadow: [
                BoxShadow(
                  offset: Offset(0, 0),
                  blurRadius: 10,
                  color: kShadowColor,
                )
              ],
            ),
            child: Column(children: [
              Container(
                alignment: Alignment.topRight,
                child: Text("شقة للإيجار",
                    style: primaryText),
              ),
              Container(
                alignment: Alignment.center,
                child: Text(
                  "شقة جديدة لللإيجار ،5غرف و منتفعات ، ديكور جديد ، مطبخ كبير ، طابق ثاني ، فيها شرفة مطلة على المحيط الهادي ",
                  textAlign: TextAlign.right,
                ),
              ),
              Container(
                alignment: Alignment.bottomLeft,
                child: Text(
                  "اليوم : 6:00",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    fontSize: getProportionateScreenWidth(10),
                  ),
                ),
              ),
            ]),
          ),
        ),
        InkWell(
          child: Container(
            height: getProportionateScreenHeight(130),
            margin: EdgeInsets.all(10),
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: kTextWhite,
              boxShadow: [
                BoxShadow(
                  offset: Offset(0, 0),
                  blurRadius: 10,
                  color: kShadowColor,
                )
              ],
            ),
            child: Column(children: [
              Container(
                alignment: Alignment.topRight,
                child: Text("شقة للإيجار",
                    style: primaryText),
              ),
              Container(
                alignment: Alignment.center,
                child: Text(
                  "شقة جديدة لللإيجار ،5غرف و منتفعات ، ديكور جديد ، مطبخ كبير ، طابق ثاني ، فيها شرفة مطلة على المحيط الهادي ",
                  textAlign: TextAlign.right,
                ),
              ),
              Container(
                alignment: Alignment.bottomLeft,
                child: Text(
                  "اليوم : 6:00",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    fontSize: getProportionateScreenWidth(10),
                  ),
                ),
              ),
            ]),
          ),
        ),
      ]),
    ));
  }
}
