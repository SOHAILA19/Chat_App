import 'package:chatapp/core/themes/colors.dart';
import 'package:flutter/material.dart';

class RecentPicture extends StatelessWidget {
  const RecentPicture({super.key, required this.image});
  final String image;

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: 30,
      backgroundImage: AssetImage(image),
      child: Container(
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(color: ColorsApp.primaryColor, width: 2),
        ),
      ),
    );
  }
}
