import 'package:chat_app/core/shared%20widgets/custom_text.dart';
import 'package:flutter/material.dart';

class PasswordField extends StatelessWidget {
  const PasswordField({
    super.key,
    required this.passwordController,
    required this.toogleVisibility,
    required this.isPasswordVisibility,
  });
  final TextEditingController passwordController;
  final VoidCallback toogleVisibility; //for icon hidden or not
  final bool isPasswordVisibility;

  @override
  Widget build(BuildContext context) {
    return CustomText(
        type: TextInputType.visiblePassword,
        label: "Enter your Password",
        hint: "your password",
        controller: passwordController,
        isObscure: !isPasswordVisibility,
        prefix: Icons.lock,
        suffix: isPasswordVisibility ? Icons.visibility : Icons.visibility_off,
        pressed: toogleVisibility,
        validate: (value) {
          if (value!.isEmpty) {
            return "Password shouldn't be empty";
          } else {
            return null;
          }
        });
  }
}
