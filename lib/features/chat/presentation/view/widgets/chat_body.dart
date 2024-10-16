import 'package:chat_app/features/chat/presentation/view/widgets/chat_appbar.dart';
import 'package:chat_app/features/chat/presentation/view/widgets/chat_list.dart';
import 'package:flutter/material.dart';

class ChatBody extends StatelessWidget {
  const ChatBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const ChatAppBar(),
        const Divider(
          color: Colors.black,
          thickness: 0.1,
        ),
        ChatList()
      ],
    );
  }
}
