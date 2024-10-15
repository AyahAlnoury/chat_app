import 'package:chat_app/features/auth/presentation/view/widgets/login_body.dart';
import 'package:chat_app/features/auth/presentation/view/widgets/signup__body.dart';
import 'package:flutter/material.dart';

class SignupView extends StatelessWidget {
  const SignupView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(body: SignupBody()),
    );
  }
}
