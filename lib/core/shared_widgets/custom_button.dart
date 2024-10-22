import 'package:chatapp/core/themes/colors.dart';
import 'package:chatapp/core/themes/styles.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final Color? backgroundColor;
  final double? borderRadius;
  final String text;
  final double? fontSized;
  final Color? textColor;
  final VoidCallback func;
  final double? width;
  final double height;

  const CustomButton({
    super.key,
    this.backgroundColor,
    this.borderRadius,
    required this.text,
    this.fontSized,
    this.textColor,
    required this.func,
    this.width,
    this.height = 70,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: height,
      child: ElevatedButton(
        onPressed: func,
        style: ElevatedButton.styleFrom(
          backgroundColor: ColorsApp.primaryColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(borderRadius ?? 24.0),
          ),
        ),
        child: Text(
          text,
          style: Styles.textStyle30,
        ),
      ),
    );
  }
}
