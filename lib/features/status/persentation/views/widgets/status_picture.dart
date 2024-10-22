import 'package:chatapp/core/constants/asset_icons.dart';
import 'package:flutter/material.dart';

class StatusPicture extends StatelessWidget {
  const StatusPicture({super.key, required this.image});
  final String image;

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: 30,
      backgroundImage: AssetImage(image),
      child: Align(
        alignment: Alignment.bottomRight,
        child: CircleAvatar(
          radius: 10,
          backgroundColor: Colors.white,
          child: Container(
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(color: Colors.green, width: 2),
              ),
              child: AssetIcons.add),
        ),
      ),
    );
  }
}
