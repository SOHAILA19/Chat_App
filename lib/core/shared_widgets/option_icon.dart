import 'package:chatapp/core/constants/asset_icons.dart';
import 'package:flutter/material.dart';

class OptionIcon extends StatelessWidget {
  const OptionIcon({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: AssetIcons.options,
      onPressed: () {},
    );
  }
}
