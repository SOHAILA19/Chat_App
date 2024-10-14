import 'package:chatapp/core/shared_widgets/custom_button.dart';
import 'package:flutter/material.dart';

class SignupButton extends StatefulWidget {
  final TextEditingController nameController;
  final TextEditingController numberController;
  final TextEditingController emailController;
  final TextEditingController passwordController;
  final VoidCallback onSuccess;
  final Function(String?) onNameError;
  final Function(String?) onNumberError;
  final Function(String?) onEmailError;
  final Function(String?) onPasswordError;

  const SignupButton({
    super.key,
    required this.onSuccess,
    required this.nameController,
    required this.numberController,
    required this.emailController,
    required this.passwordController,
    required this.onNameError,
    required this.onNumberError,
    required this.onEmailError,
    required this.onPasswordError,
  });

  @override
  State<SignupButton> createState() => _LoginButtonState();
}

class _LoginButtonState extends State<SignupButton> {
  void _validateFields() {
    widget.onNameError(null);
    widget.onNumberError(null);
    widget.onEmailError(null);
    widget.onPasswordError(null);

    String? nameError;
    String? phoneError;
    String? emailError;
    String? passwordError;

    if (widget.nameController.text.isEmpty) {
      nameError = 'Name cannot be empty';
    }

    if (widget.numberController.text.isEmpty) {
      phoneError = 'Phone number cannot be empty';
    } else if (widget.numberController.text.length != 11) {
      phoneError = 'Phone number must be 11 digits';
    }

    if (widget.emailController.text.isEmpty) {
      emailError = 'Email cannot be empty';
    } else if (!widget.emailController.text.contains('@')) {
      emailError = 'Email should contain @';
    }

    if (widget.passwordController.text.isEmpty) {
      passwordError = 'Password cannot be empty';
    } else if (widget.passwordController.text.length < 8) {
      passwordError = 'Password must be at least 8 characters';
    }

    if (nameError != null) widget.onNameError(nameError);
    if (phoneError != null) widget.onNumberError(phoneError);
    if (emailError != null) widget.onEmailError(emailError);
    if (passwordError != null) widget.onPasswordError(passwordError);

    if (nameError == null &&
        phoneError == null &&
        emailError == null &&
        passwordError == null) {
      widget.onSuccess();
    }
  }

  @override
  Widget build(BuildContext context) {
    return CustomButton(
      text: 'Sign Up',
      func: _validateFields,
    );
  }
}
