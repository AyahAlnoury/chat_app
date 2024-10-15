import 'package:chat_app/core/shared%20widgets/custom_text.dart';
import 'package:flutter/material.dart';

class NameField extends StatelessWidget {
  const NameField({super.key, required this.nameController});
  final TextEditingController nameController;
  @override
  Widget build(BuildContext context) {
    return CustomText(
        type: TextInputType.emailAddress,
        label: "Enter your Name",
        hint: "your name",
        prefix: Icons.person_2_outlined,
        controller: nameController,
         validate: (value) {
          if (value!.isEmpty) {      
            return "Name must not be Empty ";
          } else {
            return null;
          }
        });
  }
}
