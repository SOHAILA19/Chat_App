import 'package:chatapp/core/constants/asset_icons.dart';
import 'package:chatapp/core/themes/colors.dart';
import 'package:flutter/material.dart';

class SaveProfileButton extends StatelessWidget {
  const SaveProfileButton({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
      onPressed: () {},
      icon: AssetIcons.save,
      label: const Text(
        'Save Profile',
        style: TextStyle(
            color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
      ),
      style: ElevatedButton.styleFrom(
        padding: const EdgeInsets.symmetric(horizontal: 90, vertical: 15),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30),
        ),
        iconColor: Colors.white,
        backgroundColor: ColorsApp.primaryColor,
      ),
    );
  }
}
