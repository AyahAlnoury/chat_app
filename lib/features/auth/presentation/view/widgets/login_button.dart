import 'package:chat_app/core/shared%20widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class LoginButton extends StatelessWidget {
  const LoginButton({
    super.key,
    required this.passwordController,
    required this.emailController,
    required this.onSuccess,
  });
  final TextEditingController passwordController;
  final TextEditingController emailController;
  final VoidCallback onSuccess;

  @override
  Widget build(BuildContext context) {
    return CustomButton(
        text: 'Log in',
        func: () {
          //عند الضغط رح يفحص انو حقل الايميل يحوي@ و الباسوورد ما أقل من 8
          if (!emailController.text.contains('@')) {
            ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(content: Text('Email address isn\'t valid ')));
            //  displaytoastMssg('Email address isn\'t vald ', context);
          } else if (passwordController.text.isEmpty) {
            displaytoastMssg('Password is mandatory', context);
          } else {
            onSuccess();
          }
        });
  }
}

displaytoastMssg(String msg, BuildContext context) {
  Fluttertoast.showToast(msg: msg);
}
