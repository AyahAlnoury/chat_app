import 'package:flutter/material.dart';

Widget CustomField({
  required String title,
  TextEditingController? controller,
  required TextInputType type,
  Function(String)? onChange,
  FormFieldValidator? validate,
  String? label,
  String? hint,
  Function()? pressed,
  Function()? tap,
  bool? enable,
  String? errorText,
}) =>
    Padding(
      padding: const EdgeInsets.all(12.0),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Text(title),
        Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(30),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.1),
                spreadRadius: 6,
                blurRadius: 8,
                offset: Offset(0, 7),
              ),
            ],
          ),
          child: TextFormField(
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
          ),
        )
      ]),
    );
