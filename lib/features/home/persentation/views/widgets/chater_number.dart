import 'package:chatapp/core/themes/styles.dart';
import 'package:flutter/material.dart';

class ChaterNumber extends StatelessWidget {
  const ChaterNumber({
    super.key,
    required this.number,
  });
  final String number;

  @override
  Widget build(BuildContext context) {
    return Text(
      "# $number",
      style: Styles.textStyle15.copyWith(color: Colors.blueGrey),
    );
  }
}
