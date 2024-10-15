import 'package:chat_app/core/themes/stayles.dart';
import 'package:flutter/material.dart';

class CustomSaveButton extends StatelessWidget {
  const CustomSaveButton({
    super.key,
    this.width,
    this.height = 43,
    this.backgroundColor,
    this.textColor,
    this.borderRadius,
    this.fontSized,
    required this.text,
    required this.func,
  });
  final double? width;
  final double? height;
  final Color? backgroundColor;
  final Color? textColor;
  final BorderRadius? borderRadius;
  final double? fontSized;
  final String text;
  final VoidCallback func;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        width: double.infinity,
        child: ElevatedButton(
          onPressed: func,
          style: ElevatedButton.styleFrom(
              backgroundColor: Colors.green,
              padding: EdgeInsets.symmetric(
                horizontal: 48,
                vertical: 12,
              ),
              shape: RoundedRectangleBorder(
                borderRadius: borderRadius ?? BorderRadius.circular(24),
              )),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.save,
                color: Colors.white,
              ),
              SizedBox(width: 8),
              Text(
                text,
                style: Styles.textStyle10.copyWith(
                  color: textColor ?? Colors.white,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
