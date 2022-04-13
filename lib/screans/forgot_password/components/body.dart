import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../../../components/custom_surfix_icon.dart';
import '../../../components/default_button.dart';
import '../../../components/form_error.dart';
import '../../../components/no_account_text.dart';
import '../../../constants.dart';
import '../../../size_config.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: SingleChildScrollView(
        child: Padding(
          padding:
              EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
          child: Column(
            children: [
              SizedBox(height: SizeConfig.screenHeight * 0.01),
              SvgPicture.asset("assets/icons/logo.svg", height: 80 , width: 80 , alignment: Alignment.center),
              SizedBox(height: SizeConfig.screenHeight * 0.01),
              Text(
                "نسيت كلمة المرور",
                style: headingStyleSecond
              ),
              SizedBox(height: SizeConfig.screenHeight * 0.1),
              ForgotPassForm(),
            ],
          ),
        ),
      ),
    );
  }
}

class ForgotPassForm extends StatefulWidget {
  @override
  _ForgotPassFormState createState() => _ForgotPassFormState();
}

class _ForgotPassFormState extends State<ForgotPassForm> {
  final _formKey = GlobalKey<FormState>();
  List<String> errors = [];
  String email;
  String password;

  void addError({String error}) {
    if (!errors.contains(error))
      setState(() {
        errors.add(error);
      });
  }

  void removeError({String error}) {
    if (errors.contains(error))
      setState(() {
        errors.remove(error);
      });
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [


          TextFormField(
            cursorColor: kTextColor,
            keyboardType: TextInputType.emailAddress,
            onSaved: (newValue) => email = newValue,
            onChanged: (value) {
              if (value.isNotEmpty) {
                removeError(error: kEmailNullError);
              } else if (emailValidatorRegExp.hasMatch(value)) {
                removeError(error: kInvalidEmailError);
              }
              return null;
            },
            validator: (value) {
              if (value.isEmpty) {
                addError(error: kEmailNullError);
                return "";
              } else if (!emailValidatorRegExp.hasMatch(value)) {
                addError(error: kInvalidEmailError);
                return "";
              }
              return null;
            },
            decoration: InputDecoration(
              labelText: "البريد الإلكتروني",
              hintText: "أدخل البريد الإلكتروني",
              labelStyle: TextStyle(color: kTextColor),
              // If  you are using latest version of flutter then lable text and hint text shown like this
              // if you r using flutter less then 1.20.* then maybe this is not working properly
              // floatingLabelBehavior: FloatingLabelBehavior.always,
              prefixIcon: CustomSurffixIcon(svgIcon: "assets/icons/email.svg"),
              border: outlineInputBorder(),
              enabledBorder: outlineInputBorder(),
              focusedBorder: outlineInputBorder(),
              contentPadding: EdgeInsets.symmetric(horizontal: 42, vertical: 10),

            ),
          ),
          SizedBox(height: getProportionateScreenHeight(30)),
          TextFormField(
            obscureText: true,
            onSaved: (newValue) => password = newValue,
            onChanged: (value) {
              if (value.isNotEmpty) {
                removeError(error: kPassNullError);
              } else if (value.length >= 8) {
                removeError(error: kShortPassError);
              }
              password = value;
            },
            validator: (value) {
              if (value.isEmpty) {
                addError(error: kPassNullError);
                return "";
              } else if (value.length < 8) {
                addError(error: kShortPassError);
                return "";
              }
              return null;
            },
            decoration: InputDecoration(
              labelText: "كلمة المرور الجديدة",
              hintText: "أدخل كلمة المرور",
              labelStyle: TextStyle(color: kTextColor),
              // If  you are using latest version of flutter then lable text and hint text shown like this
              // if you r using flutter less then 1.20.* then maybe this is not working properly
              // floatingLabelBehavior: FloatingLabelBehavior.always,
              prefixIcon: CustomSurffixIcon(svgIcon: "assets/icons/password.svg"),
              border: outlineInputBorder(),
              enabledBorder: outlineInputBorder(),
              focusedBorder: outlineInputBorder(),
              contentPadding: EdgeInsets.symmetric(horizontal: 42, vertical: 10),
            ),
          ),
          FormError(errors: errors),
          SizedBox(height: SizeConfig.screenHeight * 0.1),
          DefaultButton(
            text: "تغيير كلمة المرور",
            press: () {
              if (_formKey.currentState.validate()) {
                // Do what you want to do
              }
            },
          ),
        ],
      ),
    );
  }
}
