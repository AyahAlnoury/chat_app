import 'package:chat_app/core/constants/assets_images_constants.dart';
import 'package:chat_app/core/themes/colors.dart';
import 'package:flutter/material.dart';

class ProfileImage extends StatelessWidget {
  const ProfileImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        const CircleAvatar(
          backgroundImage: AssetImage(
            AssetsImages.profile,
          ),
          radius: 50,
        ),
        Positioned(
          right: 0,
          top: 65,
          child: Container(
            width: 23,
            height: 23,
            decoration: BoxDecoration(
                color: ColorApp.PrimaryColor,
                borderRadius: BorderRadius.circular(50)),
            child: Center(
              child: IconButton(
                padding: EdgeInsets.zero,
                onPressed: () {},
                icon: Icon(
                  Icons.edit,
                  size: 17,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ),
       ],
    );
  }
}
