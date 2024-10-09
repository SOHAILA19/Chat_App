import 'package:chatapp/core/constants/asset_images.dart';
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
        const Image(
          image: AssetImage(AssetImages.logo),
          height: 200,
          width: 200,
        ),
        Text(
          "Whats Up",
          style: Styles.textStyle30.copyWith(color: ColorsApp.primaryColor),
        ),
        const SizedBox(
          height: 200,
        ),
        Text(
          "The best chat App of this is century",
          style: Styles.textStyle15,
        ),
      ],
    );
  }
}
