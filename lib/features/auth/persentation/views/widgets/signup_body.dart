import 'package:chatapp/core/shared_widgets/whatsup_logo.dart';
import 'package:chatapp/features/auth/persentation/views/widgets/email_textfield.dart';
import 'package:chatapp/features/auth/persentation/views/widgets/name_textfield.dart';
import 'package:chatapp/features/auth/persentation/views/widgets/number_textfield.dart';
import 'package:chatapp/features/auth/persentation/views/widgets/password_textfield.dart';
import 'package:chatapp/features/auth/persentation/views/widgets/signup_button.dart';
import 'package:chatapp/features/auth/persentation/views/widgets/signup_row.dart';
import 'package:chatapp/features/auth/persentation/views/widgets/signup_title.dart';
import 'package:chatapp/features/home/persentation/views/widgets/navigation_bar.dart';
import 'package:flutter/material.dart';

class SignupBody extends StatefulWidget {
  const SignupBody({super.key});

  @override
  State<SignupBody> createState() => _SignupBodyState();
}

class _SignupBodyState extends State<SignupBody> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController nameController = TextEditingController();
  final TextEditingController numberController = TextEditingController();

  bool isPasswordVisible = false;
  String? emailError;
  String? passwordError;
  String? nameError;
  String? numberError;

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
              const SignupTitle(),
              const SizedBox(height: 60),
              NameTextfield(
                nameController: nameController,
                errorMessage: nameError,
              ),
              const SizedBox(height: 20),
              EmailTextfield(
                emailController: emailController,
                errorMessage: emailError,
              ),
              const SizedBox(height: 20),
              NumberTextfield(
                numberController: nameController,
                errorMessage: nameError,
              ),
              const SizedBox(height: 20),
              PasswordTextfield(
                passwordController: passwordController,
                isPasswordVisible: isPasswordVisible,
                errorMessage: passwordError,
                toogleVisibility: () {
                  setState(() {
                    isPasswordVisible = !isPasswordVisible;
                  });
                },
              ),
              const SizedBox(height: 40),
              SignupButton(
                nameController: nameController,
                emailController: emailController,
                passwordController: passwordController,
                numberController: numberController,
                onSuccess: () {
                  Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const NavigationnBar()));
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
                onNameError: (error) {
                  setState(() {
                    nameError = error;
                  });
                },
                onNumberError: (error) {
                  setState(() {
                    numberError = error;
                  });
                },
              ),
              const SizedBox(height: 40),
              const SignupRow(),
            ],
          ),
        ),
      ),
    );
  }
}
