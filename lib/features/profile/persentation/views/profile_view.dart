import 'package:chatapp/core/constants/asset_icons.dart';
import 'package:chatapp/core/shared_widgets/appbar_text.dart';
import 'package:chatapp/features/profile/persentation/views/widgets/profile_body.dart';
import 'package:flutter/material.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const AppbarText(title: 'Profile'),
        leading: IconButton(
          icon: AssetIcons.arrowBack,
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Column(
        children: [
          Divider(
            color: Colors.grey,
            height: 1,
          ),
          ProfileBody(),
        ],
      ),
    );
  }
}
