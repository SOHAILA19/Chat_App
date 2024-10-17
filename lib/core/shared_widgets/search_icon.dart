import 'package:chatapp/core/constants/asset_icons.dart';
import 'package:flutter/material.dart';

class SearchIcon extends StatelessWidget {
  const SearchIcon({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: AssetIcons.Search,
      onPressed: () {},
    );
  }
}
