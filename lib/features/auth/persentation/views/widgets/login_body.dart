import 'package:chatapp/core/shared_widgets/whatsup_logo.dart';
import 'package:chatapp/features/auth/persentation/views/widgets/email_textfield.dart';
import 'package:chatapp/features/auth/persentation/views/widgets/login_button.dart';
import 'package:chatapp/features/auth/persentation/views/widgets/login_row.dart';
import 'package:chatapp/features/auth/persentation/views/widgets/login_title.dart';
import 'package:chatapp/features/auth/persentation/views/widgets/password_textfield.dart';
import 'package:chatapp/features/home/persentation/views/home_view.dart';
import 'package:flutter/material.dart';

class LoginBody extends StatefulWidget {
  const LoginBody({super.key});

  @override
  State<LoginBody> createState() => _LoginBodyState();
}

class _LoginBodyState extends State<LoginBody> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  bool isPasswordVisible = false;
  String? emailError;
  String? passwordError;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 20, left: 20),
      child: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const WhatsUpLogo(),
              const LoginTitle(),
              const SizedBox(height: 60),
              EmailTextfield(
                emailController: emailController,
                errorMessage: emailError, // Show email error message
              ),
              const SizedBox(height: 20),
              PasswordTextfield(
                passwordController: passwordController,
                isPasswordVisible: isPasswordVisible,
                errorMessage: passwordError, // Show password error message
                toogleVisibility: () {
                  setState(() {
                    isPasswordVisible = !isPasswordVisible;
                  });
                },
              ),
              const SizedBox(height: 40),
              LoginButton(
                emailController: emailController,
                passwordController: passwordController,
                onSuccess: () {
                  Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const HomeView()));
                },
                onEmailError: (error) {
                  setState(() {
                    emailError = error;
                  });
                },
                onPasswordError: (error) {
                  setState(() {
                    passwordError = error;
                  });
                },
              ),
              const SizedBox(height: 40),
              const LoginRow(),
            ],
          ),
        ),
      ),
    );
  }
}
