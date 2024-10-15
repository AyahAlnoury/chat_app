import 'package:chat_app/core/shared%20widgets/custom_field.dart';
import 'package:chat_app/features/profile/presentation/view/widgets/profile_image.dart';
import 'package:chat_app/features/profile/presentation/view/widgets/save_button.dart';
import 'package:chat_app/features/splash/presentation/view/splash_view.dart';
import 'package:flutter/material.dart';

class ProfileBody extends StatelessWidget {
  ProfileBody({super.key});
  var formKey = GlobalKey<FormState>();
  final TextEditingController nameController = TextEditingController();

  final TextEditingController phoneController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: SingleChildScrollView(
        child: Column(
          children: [
            const Divider(),
            const SizedBox(
              height: 15,
            ),
            const ProfileImage(),
            const SizedBox(
              height: 15,
            ),
            const Divider(),
            const SizedBox(
              height: 15,
            ),
            CustomField(
                type: TextInputType.text,
                controller: nameController,
                title: 'Name'),
            const SizedBox(
              height: 15,
            ),
            CustomField(
                type: TextInputType.number,
                controller: phoneController,
                title: 'Phone'),
            const SizedBox(
              height: 15,
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: SaveButton(
                nameController: nameController,
                phoneController: phoneController,
                onSuccess: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: ((context) => const SplashPage())));
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
