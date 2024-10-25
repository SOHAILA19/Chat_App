import 'package:chatapp/features/profile/persentation/views/widgets/info_title.dart';
import 'package:chatapp/features/profile/persentation/views/widgets/profile_picture.dart';
import 'package:chatapp/features/profile/persentation/views/widgets/profile_textfield.dart';
import 'package:chatapp/features/profile/persentation/views/widgets/save_profile_button.dart';
import 'package:flutter/material.dart';

class ProfileBody extends StatelessWidget {
  const ProfileBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(40),
      child: const Column(
        children: [
          ProfilePicture(),
          Padding(
              padding: EdgeInsets.only(top: 40, bottom: 50),
              child: Divider(color: Colors.grey, height: 1)),
          InfoTitle(title: 'Name'),
          SizedBox(height: 15),
          ProfileTextfield(text: 'Marwan'),
          SizedBox(height: 50),
          InfoTitle(title: 'Phone'),
          SizedBox(height: 15),
          ProfileTextfield(text: '+01125446258'),
          SizedBox(height: 70),
          SaveProfileButton(),
        ],
      ),
    );
  }
}
