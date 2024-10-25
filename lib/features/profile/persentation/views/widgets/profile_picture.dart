import 'package:chatapp/core/constants/asset_icons.dart';
import 'package:chatapp/core/constants/asset_images.dart';
import 'package:chatapp/core/themes/colors.dart';
import 'package:flutter/material.dart';

class ProfilePicture extends StatelessWidget {
  const ProfilePicture({super.key});

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: 70,
      backgroundImage: const AssetImage(AssetImages.profilePicture),
      child: Align(
        alignment: Alignment.bottomRight,
        child: CircleAvatar(
          radius: 20,
          backgroundColor: ColorsApp.primaryColor,
          child: Container(
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(color: ColorsApp.primaryColor, width: 2),
              ),
              child: AssetIcons.edit),
        ),
      ),
    );
  }
}
