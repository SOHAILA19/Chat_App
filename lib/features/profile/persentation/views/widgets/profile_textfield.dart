import 'package:flutter/material.dart';

class ProfileTextfield extends StatelessWidget {
  const ProfileTextfield({super.key, required this.text});
  final String text;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      initialValue: text,
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30),
        ),
      ),
    );
  }
}
