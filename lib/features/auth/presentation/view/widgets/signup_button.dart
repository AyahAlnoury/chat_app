import 'package:chat_app/core/shared%20widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

String errorTextVal = "";

class SignupButton extends StatelessWidget {
  SignupButton({
    super.key,
    required this.passwordController,
    required this.emailController,
    required this.onSuccess,
    required this.nameController,
    required this.phoneController,
  });
  final TextEditingController passwordController;
  final TextEditingController emailController;
  final TextEditingController nameController;
  final TextEditingController phoneController;

  final VoidCallback onSuccess;
  @override
  Widget build(BuildContext context) {
    return CustomButton(
        text: 'Sign Up',
        func: () {
          if (nameController.text.isEmpty) {
            displaytoastMssg('Name is mandatory', context);
          } else if (!emailController.text.contains('@')) {
            ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(content: Text('Email address isn\'t valid ')));
          } else if (phoneController.text.isEmpty) {
            errorTextVal = "Phone must not be empty";
            //displaytoastMssg('Phone is mandatory', context);
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
