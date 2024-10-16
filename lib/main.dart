import 'package:chat_app/features/chat/presentation/view/chat_view.dart';
import 'package:chat_app/features/profile/presentation/view/profile_view.dart';
import 'package:chat_app/features/splash/presentation/view/splash_view.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        home: ChatView());
    // ProfileView());
    // SplashPage());
  }
}
