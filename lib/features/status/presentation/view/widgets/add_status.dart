import 'package:chat_app/core/shared%20widgets/custom_circle_avatar.dart';
import 'package:flutter/material.dart';

class AddStatus extends StatelessWidget {
  const AddStatus({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Container(
          // padding: const EdgeInsets.all(10),
          child: Row(children: [
        CustomCircleAvatar(
          top: 35,
          radius: 28,
          Pressed: () {},
          callProfile: false,
        ),
        SizedBox(width: 15),
        const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("My status"),
            Text(
              "Tap to add status update",
              style: TextStyle(color: Colors.grey),
            ),
          ],
        )
      ])),
    );
  }
}
