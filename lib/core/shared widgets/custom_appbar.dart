import 'package:chat_app/core/themes/stayles.dart';
import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';

class CustomAppBar extends StatelessWidget {
  CustomAppBar({
    required this.title,
    super.key,
  });
  String title;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: Styles.textStyle24,
          ),
          SizedBox(
            width: 120,
          ),
          IconButton(
            onPressed: () {},
            iconSize: 24,
            icon: const Icon(Ionicons.search_outline),
          ),
          IconButton(
            onPressed: () {},
            iconSize: 24,
            icon: const Icon(Ionicons.ellipsis_vertical),
          ),
        ],
      ),
    );
  }
}