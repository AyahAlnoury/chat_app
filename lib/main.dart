import 'package:chat_app/features/home/chat/presentation/view/chat_view.dart';
import 'package:chat_app/features/home/bottomNavigationBar/presentation/view/home_view.dart';
import 'package:chat_app/features/profile/presentation/view/profile_view.dart';
import 'package:chat_app/features/splash/presentation/view/splash_view.dart';
import 'package:chat_app/features/status/presentation/view/status_view.dart';
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
        home:
        // HomeView());
    //StatusView());
    //ChatView());
    // ProfileView());
   SplashPage());
  }
}
