import 'package:chat_app/features/home/chat/presentation/view/widgets/chat_body.dart';
import 'package:chat_app/features/home/chat/presentation/view/widgets/floating_button.dart';
import 'package:flutter/material.dart';

class ChatView extends StatelessWidget {
  const ChatView({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        floatingActionButton: FloatingButton(),
        body: ChatBody(),
      ),
    );
  }
}
