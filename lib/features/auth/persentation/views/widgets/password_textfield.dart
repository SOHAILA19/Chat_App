import 'package:chatapp/core/shared_widgets/custom_textfield.dart';
import 'package:flutter/material.dart';

class PasswordTextfield extends StatelessWidget {
  final TextEditingController passwordController;
  final bool isPasswordVisible;
  final VoidCallback toogleVisibility;
  final String? errorMessage;

  const PasswordTextfield({
    super.key,
    required this.passwordController,
    required this.isPasswordVisible,
    required this.toogleVisibility,
    this.errorMessage,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomTextField(
          controller: passwordController,
          type: TextInputType.visiblePassword,
          label: 'Password',
          hint: 'Enter your password',
          isObscure: !isPasswordVisible,
          prefix: Icons.lock,
          suffix: isPasswordVisible ? Icons.visibility : Icons.visibility_off,
          pressed: toogleVisibility,
          validate: (value) {
            if (value == null || value.isEmpty) {
              return 'Please enter your password';
            }
            return null;
          },
        ),
        if (errorMessage != null)
          Padding(
            padding: const EdgeInsets.only(top: 5.0),
            child: Text(
              errorMessage!,
              style: const TextStyle(color: Colors.red),
            ),
          ),
      ],
    );
  }
}
