import 'package:flutter/material.dart';

class CallerPicture extends StatelessWidget {
  const CallerPicture({super.key, required this.image});
  final String image;

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: 30,
      backgroundImage: AssetImage(image),
    );
  }
}
