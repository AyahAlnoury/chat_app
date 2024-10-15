import 'package:flutter/material.dart';

Widget CustomField({
  required String title,
  TextEditingController? controller,
  required TextInputType type, //number or letter
  Function(String)? onChange,
  FormFieldValidator? validate, //field not empty
  String? label,
  String? hint,
  Function()? pressed, //pressed on eye Icon
  Function()? tap,
  bool? enable, //on preesed convert border to green
  String? errorText,
}) =>
    Padding(
      padding: const EdgeInsets.all(12.0),
      child: Column(children: [
        Text(title),
        TextFormField(
          onTap: tap,
          enabled: enable,
          controller: controller,
          decoration: InputDecoration(
            errorText: errorText,
            labelText: label,
            hintText: hint,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(30.0),
            ),
          ),
          style: TextStyle(fontSize: 14),
          keyboardType: type,
          onChanged: onChange,
          validator: validate,
        )
      ]),
    );
