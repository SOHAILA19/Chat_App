import 'package:chatapp/core/themes/styles.dart';
import 'package:flutter/material.dart';

class TitleCall extends StatelessWidget {
  const TitleCall({super.key, required this.title});
  final String title;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20, left: 20, bottom: 20),
      child: Text(
        title,
        style: Styles.textStyle15.copyWith(color: Colors.grey),
      ),
    );
  }
}
