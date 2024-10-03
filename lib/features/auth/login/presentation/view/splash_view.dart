import 'package:chat_app/features/auth/login/presentation/view/login_view.dart';
import 'package:flutter/material.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();
    _navigationToLogin();
  }

  _navigationToLogin() async {
    await Future.delayed(Duration(seconds: 3), () {});
    if (context != null) {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => LoginPage()),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Center(
            child: Image.asset(
              "assets/images/logo.png",
              width: 200,
              height: 200,
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            "WhatsApp",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 35),
          ),
        ],
      ),
    );
  }
}
