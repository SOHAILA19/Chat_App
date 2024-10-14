import 'package:chatapp/core/shared_widgets/custom_row.dart';
import 'package:chatapp/features/auth/persentation/views/login_view.dart';
import 'package:flutter/material.dart';

class SignupRow extends StatelessWidget {
  const SignupRow({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomRow(
      text: 'Already have an account? ',
      buttonText: 'Login here',
      onPressed: () {
        Navigator.pushReplacement(context,
            MaterialPageRoute(builder: (context) => const LoginView()));
      },
    );
  }
}
