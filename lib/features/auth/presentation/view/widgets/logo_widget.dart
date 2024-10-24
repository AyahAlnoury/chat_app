import 'package:chat_app/core/constants/assets_images_constants.dart';
import 'package:flutter/material.dart';

class LogoWidget extends StatelessWidget {
  const LogoWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.topCenter,
      child: Image.asset(
        AssetsImages.logo,
        width: 170,
        height: 170,
      ),
    );
  }
}
