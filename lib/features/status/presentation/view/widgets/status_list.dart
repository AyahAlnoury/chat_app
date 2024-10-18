import 'package:chat_app/core/constants/assets_images_constants.dart';
import 'package:chat_app/core/themes/colors.dart';
import 'package:chat_app/features/status/data/model/status_model.dart';
import 'package:flutter/material.dart';

class StatusList extends StatelessWidget {
  StatusList({super.key, required this.viewedStatus});
  bool viewedStatus;
  List<StatusModel> StatusDetails = [
    StatusModel(
        name: "Ayah",
        image: AssetsImages.profile,
        time: const Duration(seconds: 105559).dayHourMinuteSecondFormatted()),
    StatusModel(
        name: "Rawan",
        image: AssetsImages.profile,
        time: const Duration(seconds: 105779).dayHourMinuteSecondFormatted()),
    StatusModel(
        name: "Alaa",
        image: AssetsImages.profile,
        time: const Duration(seconds: 100559).dayHourMinuteSecondFormatted()),
    StatusModel(
        name: "Maya",
        image: AssetsImages.profile,
        time: const Duration(seconds: 155559).dayHourMinuteSecondFormatted())
  ];
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: ListView.builder(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          padding: EdgeInsets.zero,
          itemCount: 4,
          itemBuilder: (context, index) {
            return ListTile(
              leading: Container(
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    border: viewedStatus
                        ? Border.all(color: Colors.grey, width: 2)
                        : Border.all(color: ColorApp.PrimaryColor, width: 2)),
                child: CircleAvatar(
                  backgroundImage: AssetImage(StatusDetails[index].image),
                  radius: 35,
                ),
              ),
              title: Text(StatusDetails[index].name),
              subtitle: Text(
                StatusDetails[index].time,
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
