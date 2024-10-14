import 'package:chatapp/core/themes/styles.dart';
import 'package:flutter/material.dart';

class LoginTitle extends StatelessWidget {
  const LoginTitle({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Text(
      "Log in to your account",
      style: Styles.textStyle28,
    );
  }
}