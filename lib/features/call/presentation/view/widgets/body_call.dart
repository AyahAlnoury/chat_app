import 'package:chat_app/core/shared%20widgets/custom_appbar.dart';
import 'package:chat_app/features/call/presentation/view/widgets/call_list.dart';
import 'package:flutter/material.dart';

class BodyCall extends StatelessWidget {
  const BodyCall({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomAppBar(title: "Calls"),
          const Divider(
            color: Colors.grey,
            thickness: 0.1,
          ),
          const SizedBox(
            height: 10,
          ),
          const Text(
            "      Recent",
            style: TextStyle(
              color: Colors.grey,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          CallList()
        ],
      ),
    );
  }
}
