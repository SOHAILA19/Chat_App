import 'package:chatapp/core/constants/asset_images.dart';
import 'package:flutter/material.dart';

class WhatsUpLogo extends StatelessWidget {
  const WhatsUpLogo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Image(
      image: AssetImage(AssetImages.logo),
      height: 200,
      width: 200,
    );
  }
}
