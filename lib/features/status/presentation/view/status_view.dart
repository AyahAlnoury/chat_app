import 'package:chat_app/features/status/presentation/view/widgets/status_body.dart';
import 'package:flutter/material.dart';

class StatusView extends StatelessWidget {
  const StatusView({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(body: StatusBody()),
    );
  }
}
