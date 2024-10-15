import 'package:chat_app/core/shared%20widgets/custom_text.dart';
import 'package:flutter/material.dart';

class PhoneField extends StatefulWidget {
  PhoneField({super.key, required this.phoneController});
  final TextEditingController phoneController;

  @override
  State<PhoneField> createState() => _PhoneFieldState();
}

class _PhoneFieldState extends State<PhoneField> {
  String errorTextVsl = '';

  @override
  Widget build(BuildContext context) {
    return CustomText(
        type: TextInputType.number,
        label: "Enter your phone",
        hint: "your phone",
        prefix: Icons.phone_android_outlined,
        controller: widget.phoneController,
        errorText: errorTextVsl.isEmpty ? null : errorTextVsl,
        //  errorTextVsl.isEmpty ? null : errorTextVsl,
        onChange: (value) {
          setState(() {
            if (value.isEmpty) {
              errorTextVsl = "Phone must not be empty";
            } else {
              errorTextVsl = '';
            }
          });
        },
        validate: (value) {
          setState(() {
            if (value.isEmpty) {
              errorTextVsl = "Phone must not be empty";
            } else {
              errorTextVsl = "";
            }
          });
        });
  }
}
