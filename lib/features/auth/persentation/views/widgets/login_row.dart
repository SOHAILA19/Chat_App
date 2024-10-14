import 'package:chatapp/core/shared_widgets/custom_row.dart';
import 'package:chatapp/features/auth/persentation/views/signup_view.dart';
import 'package:flutter/material.dart';

class LoginRow extends StatelessWidget {
  const LoginRow({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomRow(
      text: 'Don’t have an account? ',
      buttonText: 'Register here',
      onPressed: () {
        Navigator.pushReplacement(context,
            MaterialPageRoute(builder: (context) => const SignupView()));
      },
    );
  }
}
