import 'package:chatapp/core/themes/colors.dart';
import 'package:chatapp/core/themes/styles.dart';
import 'package:flutter/material.dart';

class CustomRow extends StatelessWidget {
  final String text;
  final String buttonText;
  final VoidCallback onPressed;

  const CustomRow({
    Key? key,
    required this.text,
    required this.buttonText,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          text,
          style: Styles.textStyle15,
        ),
        TextButton(
          onPressed: onPressed,
          child: Text(
            buttonText,
            style: const TextStyle(color: ColorsApp.primaryColor),
          ),
        ),
      ],
    );
  }
}
