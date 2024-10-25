import 'package:chatapp/core/themes/colors.dart';
import 'package:flutter/material.dart';

class ChatIcon extends StatelessWidget {
  const ChatIcon({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: () {},
      backgroundColor: ColorsApp.primaryColor,
      child: const Icon(
        Icons.chat,
        color: Colors.white,
      ),
    );
  }
}
