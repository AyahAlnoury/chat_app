import 'package:chat_app/core/shared%20widgets/custom_text.dart';
import 'package:flutter/material.dart';

class EmailField extends StatelessWidget {
  const EmailField({super.key, required this.emailController});
  final TextEditingController emailController;
  @override
  Widget build(BuildContext context) {
    return CustomText(
        type: TextInputType.emailAddress,
        label: "Enter your Email",
        hint: "your email",
        prefix: Icons.email_outlined,
        controller: emailController,
        validate: (value) {
          if (value!.isEmpty) {
            return "Email must not be Empty ";
          } else {
            return null;
          }
        });
  }
}
