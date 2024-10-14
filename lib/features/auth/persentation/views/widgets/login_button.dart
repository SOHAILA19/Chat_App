import 'package:chatapp/core/shared_widgets/custom_button.dart';
import 'package:chatapp/core/shared_widgets/snack_bar.dart';
import 'package:flutter/material.dart';

class LoginButton extends StatefulWidget {
  final TextEditingController emailController;
  final TextEditingController passwordController;
  final VoidCallback onSuccess;
  final Function(String?) onEmailError; // Function to handle email error
  final Function(String?) onPasswordError; // Function to handle password error

  const LoginButton({
    super.key,
    required this.onSuccess,
    required this.emailController,
    required this.passwordController,
    required this.onEmailError,
    required this.onPasswordError,
  });

  @override
  State<LoginButton> createState() => _LoginButtonState();
}

class _LoginButtonState extends State<LoginButton> {
  void _validateFields() {
    // Reset errors to null
    widget.onEmailError(null);
    widget.onPasswordError(null);

    // Validation
    if (widget.emailController.text.isEmpty) {
      widget.onEmailError('Email cannot be empty');
    } else if (!widget.emailController.text.contains('@')) {
      ScaffoldMessenger.of(context).showSnackBar(
        customSnackBar(message: 'Email should contain @'),
      );
    }

    if (widget.passwordController.text.isEmpty) {
      widget.onPasswordError('Password cannot be empty');
    } else if (widget.passwordController.text.length < 8) {
      ScaffoldMessenger.of(context).showSnackBar(
        customSnackBar(message: 'Password must be at least 8 characters'),
      );
    }

    // Call the success function if all validations pass
    if (widget.emailController.text.isNotEmpty &&
        widget.passwordController.text.isNotEmpty &&
        widget.passwordController.text.length >= 8 &&
        widget.emailController.text.contains('@')) {
      widget.onSuccess();
    }
  }

  @override
  Widget build(BuildContext context) {
    return CustomButton(
      text: 'Login',
      func: _validateFields,
    );
  }
}
