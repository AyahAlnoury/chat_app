import 'package:chat_app/features/auth/presentation/view/widgets/email_field.dart';
import 'package:chat_app/features/auth/presentation/view/widgets/login_button.dart';
import 'package:chat_app/features/auth/presentation/view/widgets/login_title.dart';
import 'package:chat_app/features/auth/presentation/view/widgets/logo_widget.dart';
import 'package:chat_app/features/auth/presentation/view/widgets/password_field.dart';
import 'package:chat_app/features/auth/presentation/view/widgets/register_row.dart';
import 'package:chat_app/features/splash/presentation/view/splash_view.dart';
import 'package:flutter/material.dart';

class LoginBody extends StatefulWidget {
  LoginBody({super.key});

  @override
  State<LoginBody> createState() => _LoginBodyState();
}

class _LoginBodyState extends State<LoginBody> {
  TextEditingController emailController = TextEditingController();

  var formKey = GlobalKey<FormState>();

  TextEditingController passwordController = TextEditingController();

  bool isPasswordVisibile = false;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const LogoWidget(),
              const SizedBox(
                height: 20,
              ),
              LoginTitle(
                pageName: 'login',
              ),
              const SizedBox(
                height: 20,
              ),
              EmailField(
                emailController: emailController,
              ),
              const SizedBox(
                height: 20,
              ),
              PasswordField(
                passwordController: passwordController,
                toogleVisibility: () {
                  setState(() {
                    isPasswordVisibile = !isPasswordVisibile;
                  });
                },
                isPasswordVisibility: isPasswordVisibile,
              ),
              const SizedBox(
                height: 20,
              ),
              LoginButton(
                passwordController: passwordController,
                emailController: emailController,
                onSuccess: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: ((context) => const SplashPage())));
                },
              ),
              const SizedBox(
                height: 20,
              ),
              const RegisterRow(),
            ],
          ),
        ),
      ),
    );
  }
}
