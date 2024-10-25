import 'package:chatapp/core/themes/styles.dart';
import 'package:flutter/material.dart';

class InfoTitle extends StatelessWidget {
  const InfoTitle({super.key, required this.title});
  final String title;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Text(
        title,
        style: Styles.textStyle15.copyWith(color: Colors.grey),
      ),
    );
  }
}
