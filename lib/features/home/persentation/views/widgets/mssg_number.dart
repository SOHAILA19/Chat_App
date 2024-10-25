import 'package:chatapp/core/themes/colors.dart';
import 'package:flutter/material.dart';

class MssgNumber extends StatelessWidget {
  const MssgNumber({super.key, required this.messages});
  final int messages;

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      backgroundColor: ColorsApp.primaryColor,
      radius: 12,
      child: Text(
        messages.toString(),
        style: const TextStyle(color: Colors.white, fontSize: 12),
      ),
    );
  }
}
