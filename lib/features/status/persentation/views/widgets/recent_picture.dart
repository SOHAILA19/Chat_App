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
          border: Border.all(color: Colors.green, width: 2),
        ),
      ),
    );
  }
}
