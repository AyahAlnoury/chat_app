import 'package:chat_app/core/constants/assets_images_constants.dart';
import 'package:chat_app/core/themes/colors.dart';
import 'package:flutter/material.dart';

class CustomCircleAvatar extends StatelessWidget {
  CustomCircleAvatar({
    super.key,
    required this.radius,
    required this.Pressed,
    required this.callProfile,
    required this.top
  });
  double radius;
  double top;
  bool callProfile;
  Function() Pressed;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        CircleAvatar(
          backgroundImage: AssetImage(
            AssetsImages.profile,
          ),
          radius: radius,
        ),
        Positioned(
          right: 0,
          top: top,
          child: Container(
            width: 20,
            height: 20,
            decoration: BoxDecoration(
                border: Border.all(color: ColorApp.PrimaryColor),
                color: callProfile ? ColorApp.PrimaryColor : Colors.white,
                borderRadius: BorderRadius.circular(50)),
            child: Center(
              child: IconButton(
                  padding: EdgeInsets.zero,
                  onPressed: Pressed,
                  icon: callProfile
                      ? Icon(
                          Icons.edit,
                          size: 17,
                          color: Colors.white,
                        )
                      : Icon(
                          Icons.add,
                          size: 17,
                          color: ColorApp.PrimaryColor,
                        )),
            ),
          ),
        ),
      ],
    );
  }
}
