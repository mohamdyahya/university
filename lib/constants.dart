import 'package:flutter/material.dart';
import 'package:university/size_config.dart';

const kShadowColor = Color(0xD9E6E6E6);
const kPrimaryColor = Color(0xFFFFCC00);
const kPrimaryLightColor = Color(0xFFFFEDA6);
const kPrimaryGradientColor = LinearGradient(
  begin: Alignment.topLeft,
  end: Alignment.bottomRight,
  colors: [Color(0xFFFFA53E), Color(0xFFFF7643)],
);
const kSecondaryColor = Color(0xD92B2B2B);
const kTextColor = Color(0xFF2B2B2B);
const kTextGray = Color(0xFFaaaaaa);
const kTextGray2 = Color(0x66999999);
const kTextWhite = Color(0xFFffffff);

const kAnimationDuration = Duration(milliseconds: 200);

final headingStyle = TextStyle(
  fontSize: getProportionateScreenWidth(40),
  fontWeight: FontWeight.bold,
  color: kTextColor,
  height: 1.5,
);

final headingStyleSecond = TextStyle(
  fontSize: getProportionateScreenWidth(24),
  fontWeight: FontWeight.bold,
  color: kTextColor,
  height: 1.5,
);

final headingHome = TextStyle(
  fontSize: getProportionateScreenWidth(20),
  fontWeight: FontWeight.bold,
  color: kTextColor,
  height: 1.5,
);


final primaryText = TextStyle(
  fontSize: getProportionateScreenWidth(18),
  color: kTextColor,
  fontWeight: FontWeight.bold,
  height: 1.5,
);

const defaultDuration = Duration(milliseconds: 250);

// Form Error
final RegExp emailValidatorRegExp =
    RegExp(r"^[a-zA-Z0-9.]+@[a-zA-Z0-9]+\.[a-zA-Z]+");
const String kEmailNullError = "من فضلك أدخل البريد الإلكتروني";
const String kInvalidEmailError = "الرجاء إدخال بريد إلكتروني صحيح";
const String kPassNullError = "الرجاء إدخال كلمة السر";
const String kShortPassError = "كلمة المرور قصيرة جداً";
const String kMatchPassError = "كلمة المرور غير متطابقة";
const String kNamelNullError = "الرجاء أدخل الاسم";
const String kPhoneNumberNullError = "يرجى إدخال رقم الهاتف الخاص بك";
const String kAddressNullError = "الرجاء إدخال عنوان السكن";

final otpInputDecoration = InputDecoration(
  enabledBorder: outlineInputBorder(),
  focusedBorder: outlineInputBorder(),

);

OutlineInputBorder outlineInputBorder() {
  return OutlineInputBorder(
    borderRadius: BorderRadius.circular(20),
    borderSide: BorderSide(color: kTextGray),
  );
}

