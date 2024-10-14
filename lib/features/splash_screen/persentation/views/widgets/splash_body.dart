import 'package:chatapp/core/shared_widgets/whatsup_logo.dart';
import 'package:chatapp/core/themes/colors.dart';
import 'package:chatapp/core/themes/styles.dart';
import 'package:flutter/material.dart';

class SplashBody extends StatelessWidget {
  const SplashBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const WhatsUpLogo(),
        Text(
          "Whats Up",
          style: Styles.textStyle30.copyWith(color: ColorsApp.primaryColor),
        ),
        const SizedBox(
          height: 200,
        ),
        const Text(
          "The best chat App of this is century",
          style: Styles.textStyle15,
        ),
      ],
    );
  }
}
