import 'package:chatapp/core/constants/asset_images.dart';
import 'package:flutter/material.dart';

class PictureStatus extends StatelessWidget {
  const PictureStatus({super.key});

  @override
  Widget build(BuildContext context) {
    return const CircleAvatar(
      radius: 30,
      backgroundColor: Colors.grey,
      child: Image(image: AssetImage(AssetImages.profilePicture)),
    );
  }
}
