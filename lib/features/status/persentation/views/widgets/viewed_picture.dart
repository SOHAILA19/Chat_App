import 'package:flutter/material.dart';

class ViewedPicture extends StatelessWidget {
  const ViewedPicture({super.key, required this.image});
  final String image;

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: 30,
      backgroundImage: AssetImage(image),
      child: Container(
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(color: Colors.grey, width: 2),
        ),
      ),
    );
  }
}
