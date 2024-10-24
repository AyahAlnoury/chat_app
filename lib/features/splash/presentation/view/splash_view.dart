import 'package:chat_app/core/constants/assets_images_constants.dart';
import 'package:chat_app/features/auth/presentation/view/login_view.dart';
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
    await Future.delayed(const Duration(seconds: 3), () {});
    if (context != null) {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const LoginPage()),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            height: 100,
          ),
          Center(
            child: Image.asset(
              AssetsImages.logo,
              width: 150,
              height: 150,
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          const Text(
            "WhatsUp",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
          ),
          const SizedBox(
            height: 80,
          ),
          const Text(
            "The best chat app for this century",
            style: TextStyle(
                fontWeight: FontWeight.w400, fontSize: 16, color: Colors.green),
          ),
        ],
      ),
    );
  }
}
