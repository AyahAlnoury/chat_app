import 'package:chat_app/core/themes/colors.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class FloatingButton extends StatelessWidget {
  const FloatingButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: FloatingActionButton(
          onPressed: () {},
          backgroundColor: ColorApp.PrimaryColor,
          child: const Icon(
            Icons.message_outlined,
            color: Colors.white,
          ),
        ));
  }
}
