import 'package:chat_app/features/auth/presentation/view/widgets/email_field.dart';
import 'package:chat_app/features/auth/presentation/view/widgets/login_button.dart';
import 'package:chat_app/features/auth/presentation/view/widgets/login_row.dart';
import 'package:chat_app/features/auth/presentation/view/widgets/login_title.dart';
import 'package:chat_app/features/auth/presentation/view/widgets/logo_widget.dart';
import 'package:chat_app/features/auth/presentation/view/widgets/name_field.dart';
import 'package:chat_app/features/auth/presentation/view/widgets/password_field.dart';
import 'package:chat_app/features/auth/presentation/view/widgets/phone_field.dart';
import 'package:chat_app/features/auth/presentation/view/widgets/register_row.dart';
import 'package:chat_app/features/auth/presentation/view/widgets/signup_button.dart';
import 'package:chat_app/features/splash/presentation/view/splash_view.dart';
import 'package:flutter/material.dart';

class SignupBody extends StatefulWidget {
  SignupBody({super.key});

  @override
  State<SignupBody> createState() => _LoginBodyState();
}
class _LoginBodyState extends State<SignupBody> {
  TextEditingController emailController = TextEditingController();
  var formKey = GlobalKey<FormState>();
  TextEditingController passwordController = TextEditingController();
  bool isPasswordVisibile = false;
  TextEditingController nameController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
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
                pageName: 'signup',
              ),
              const SizedBox(
                height: 20,
              ),
              NameField(
                nameController: nameController,
              ),
              const SizedBox(
                height: 15,
              ),
              EmailField(
                emailController: emailController,
              ),
              const SizedBox(
                height: 20,
              ),
              PhoneField(
                phoneController: phoneController,
              ),
              const SizedBox(
                height: 10,
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
              SignupButton(
                passwordController: passwordController,
                emailController: emailController,
                nameController: nameController,
                phoneController: phoneController,
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
              const LoginRow(),
            ],
          ),
        ),
      ),
    );
  }
}
