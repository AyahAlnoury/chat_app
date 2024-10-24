import 'package:chat_app/features/call/presentation/view/widgets/body_call.dart';
import 'package:flutter/material.dart';

class CallView extends StatelessWidget {
  const CallView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: const Scaffold(
        body: BodyCall(),
      ),
    );
  }
}
