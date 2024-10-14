import 'package:chatapp/core/shared_widgets/custom_textfield.dart';
import 'package:flutter/material.dart';

class EmailTextfield extends StatelessWidget {
  final TextEditingController emailController;
  final String? errorMessage;

  const EmailTextfield({
    super.key,
    required this.emailController,
    this.errorMessage,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomTextField(
          controller: emailController,
          type: TextInputType.emailAddress,
          label: 'Email',
          hint: 'Enter your email',
          prefix: Icons.email,
          // Pass a default decoration or customize as needed
          validate: (value) {
            if (value == null || value.isEmpty) {
              return 'Please enter your email';
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
