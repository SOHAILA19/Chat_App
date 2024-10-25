import 'package:chatapp/core/themes/styles.dart';
import 'package:flutter/material.dart';

class AppbarText extends StatelessWidget {
  const AppbarText({super.key, required this.title});
  final String title;

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: Styles.textStyle30,
    );
  }
}
