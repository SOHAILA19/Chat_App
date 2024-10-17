import 'package:chatapp/core/constants/asset_icons.dart';
import 'package:flutter/material.dart';

class ChaterPicture extends StatelessWidget {
  const ChaterPicture({super.key});

  @override
  Widget build(BuildContext context) {
    return const CircleAvatar(
      radius: 30,
      backgroundColor: Colors.grey,
      child: AssetIcons.person,
    );
  }
}
