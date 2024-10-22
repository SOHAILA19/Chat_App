import 'package:chatapp/core/themes/styles.dart';
import 'package:flutter/material.dart';

class NameStatus extends StatelessWidget {
  const NameStatus({super.key, required this.name});
  final String name;

  @override
  Widget build(BuildContext context) {
    return Text(
      name,
      style: Styles.textStyle22,
    );
  }
}
