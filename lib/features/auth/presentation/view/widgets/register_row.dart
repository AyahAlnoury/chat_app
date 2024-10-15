import 'package:chat_app/core/themes/stayles.dart';
import 'package:chat_app/features/auth/presentation/view/signup_view.dart';
import 'package:flutter/material.dart';

class RegisterRow extends StatelessWidget {
  const RegisterRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "Don't have an acount?",
          style: TextStyle(
            fontWeight: FontWeight.w200,
          ),
        ),
        TextButton(
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: ((context) => SignupView()),
                  ));
            },
            child: Text(
              "Register here",
              style: Styles.textStyle10,
            )),
      ],
    );
  }
}
