import 'package:chatapp/core/themes/styles.dart';
import 'package:flutter/material.dart';

class ChaterName extends StatelessWidget {
  const ChaterName({super.key, required this.name});
  final String name;

  @override
  Widget build(BuildContext context) {
    return Text(
      name,
      style: Styles.textStyle22,
    );
  }
}
