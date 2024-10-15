import 'package:chat_app/core/themes/stayles.dart';
import 'package:chat_app/features/profile/presentation/view/widgets/profile_body.dart';
import 'package:flutter/material.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          " Profile",
          style: Styles.textStyle24,
        ),
      ),
      body: ProfileBody(),
    );
  }
}
