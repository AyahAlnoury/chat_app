import 'package:chat_app/core/constants/assets_images_constants.dart';
import 'package:chat_app/core/themes/colors.dart';
import 'package:chat_app/features/chat/data/model/chat_details.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ChatList extends StatelessWidget {
  ChatList({super.key});

  List<ChatDetails> chatDetails = [
    ChatDetails(
        name: "Ayah",
        phone: "09999999",
        image: AssetsImages.profile,
        numberMessage: 3,
        time: Duration(seconds: 105559).dayHourMinuteSecondFormatted()),
    ChatDetails(
        name: "Rawan",
        phone: "09876543",
        image: AssetsImages.profile,
        numberMessage: 2,
        time: const Duration(seconds: 105779).dayHourMinuteSecondFormatted()),
    ChatDetails(
        name: "Ola",
        phone: "0988776655",
        image: AssetsImages.profile,
        numberMessage: 5,
        time: const Duration(seconds: 100559).dayHourMinuteSecondFormatted())
  ];
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
          itemCount: 3,
          itemBuilder: (context, index) {
            return Expanded(
              child: ListTile(
                leading: CircleAvatar(
                  backgroundImage: AssetImage(chatDetails[index].image),
                  radius: 27,
                ),
                title: Text(chatDetails[index].name),
                subtitle: Text(
                  chatDetails[index].phone,
                  style: TextStyle(color: Colors.grey),
                ),
                trailing: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      chatDetails[index].time,
                      style: TextStyle(color: Colors.grey),
                    ),
                    Container(
                      width: 20,
                      height: 20,
                      decoration: BoxDecoration(
                        color: ColorApp.PrimaryColor,
                        borderRadius: BorderRadius.circular(50),
                      ),
                      child: Center(
                          child: Text(
                              chatDetails[index].numberMessage.toString())),
                    ),
                  ],
                ),
              ),
            );
          }),
    );
  }
}

extension on Duration {
  String dayHourMinuteSecondFormatted() {
    toString();
    return [
      this.inHours.remainder(24),
      this.inMinutes.remainder(60),
    ].map((seg) {
      return seg.toString().padLeft(2, '0');
    }).join(':');
  }
}
