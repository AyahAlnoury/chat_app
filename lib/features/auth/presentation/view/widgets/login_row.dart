import 'package:chat_app/core/themes/stayles.dart';
import 'package:chat_app/features/auth/presentation/view/signup_view.dart';
import 'package:chat_app/features/auth/presentation/view/widgets/login_body.dart';
import 'package:flutter/material.dart';

class LoginRow extends StatelessWidget {
  const LoginRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "Already have an acount?",
          style: TextStyle(
            fontWeight: FontWeight.w200,
          ),
        ),
        TextButton(
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: ((context) => LoginBody()),
                  ));
            },
            child: Text(
              "Login here",
              style: Styles.textStyle10,
            )),
      ],
    );
  }
}
