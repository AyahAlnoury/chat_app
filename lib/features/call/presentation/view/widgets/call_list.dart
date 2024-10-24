import 'package:chat_app/core/constants/assets_images_constants.dart';
import 'package:chat_app/core/themes/colors.dart';
import 'package:chat_app/features/home/chat/data/model/chat_details.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CallList extends StatelessWidget {
  CallList({super.key});

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
        time: const Duration(seconds: 100559).dayHourMinuteSecondFormatted()),
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
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5),
      child: ListView.builder(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemCount: 6,
          itemBuilder: (context, index) {
            return ListTile(
                leading: CircleAvatar(
                  backgroundImage: AssetImage(chatDetails[index].image),
                  radius: 27,
                ),
                title: Text(chatDetails[index].name),
                subtitle: Text(
                  chatDetails[index].time,
                  style: TextStyle(color: Colors.grey),
                ),
                trailing: IconButton(onPressed: () {}, icon: Icon(Icons.call)));
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
