import 'package:chat_app/core/themes/stayles.dart';
import 'package:flutter/material.dart';

class LoginTitle extends StatelessWidget {
  LoginTitle({super.key, required this.pageName});
  String pageName;
  @override
  Widget build(BuildContext context) {
    return Text(
      pageName == 'login'
          ? "Log in to your account"
          : "Register To New Account",
      style: Styles.textStyle24,
      textAlign: TextAlign.center,
    );
  }
}
