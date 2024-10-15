 import 'package:chat_app/features/auth/presentation/view/widgets/login_button.dart';
import 'package:chat_app/features/profile/presentation/view/widgets/custom_save_button.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class SaveButton extends StatelessWidget {
  const SaveButton({
    super.key,
    required this.nameController,
    required this.phoneController,
    required this.onSuccess,
  });
  final TextEditingController nameController;
  final TextEditingController phoneController;
  final VoidCallback onSuccess;

  @override
  Widget build(BuildContext context) {
    return CustomSaveButton(
      text: 'Save profile',
      func: () {
        if (nameController.text.isEmpty) {
          ScaffoldMessenger.of(context)
              .showSnackBar(SnackBar(content: Text('Please enter your name')));
        } else if (phoneController.text.isEmpty) {
          ScaffoldMessenger.of(context)
              .showSnackBar(SnackBar(content: Text('Please enter your phone')));
        } else {
          onSuccess();
        }
      },
    );
  }
}
