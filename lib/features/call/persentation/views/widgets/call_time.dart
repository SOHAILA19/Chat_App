import 'package:chatapp/core/themes/styles.dart';
import 'package:flutter/material.dart';

class CallerTime extends StatelessWidget {
  const CallerTime({super.key, required this.time});
  final String time;

  @override
  Widget build(BuildContext context) {
    return Text(
      time,
      style: Styles.textStyle15.copyWith(color: Colors.grey[700]),
    );
  }
}
