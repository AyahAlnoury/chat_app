import 'package:chat_app/core/shared%20widgets/custom_appbar.dart';
import 'package:chat_app/features/status/presentation/view/widgets/add_status.dart';
import 'package:chat_app/features/status/presentation/view/widgets/status_list.dart';
import 'package:flutter/material.dart';

class StatusBody extends StatelessWidget {
  const StatusBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomAppBar(title: "Status"),
          const Divider(
            color: Colors.grey,
            thickness: 0.1,
          ),
          const AddStatus(),
          const SizedBox(height: 28),
          const Text(
            "      Recent updates",
            style: TextStyle(color: Colors.grey),
          ),
          StatusList(viewedStatus: false),
          SizedBox(
            height: 15,
          ),
          const Text(
            "      Viewed updates",
            style: TextStyle(color: Colors.grey),
          ),
          StatusList(viewedStatus: true),
        ],
      ),
    );
  }
}
