import 'package:chatapp/features/profile/persentation/views/profile_view.dart';
import 'package:flutter/material.dart';

class OptionIcon extends StatelessWidget {
  const OptionIcon({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Icon(Icons.more_vert),
      onPressed: () {
        showMenu(
          context: context,
          position: RelativeRect.fromLTRB(100, 50, 0, 0),
          items: [
            PopupMenuItem<String>(
              value: 'New Group',
              child: Text('New Group'),
            ),
            PopupMenuItem<String>(
              value: 'Profile',
              child: Text('Profile'),
            ),
            PopupMenuItem<String>(
              value: 'Logout',
              child: Text('Logout'),
            ),
          ],
        ).then((value) {
          if (value == 'New Group') {
          } else if (value == 'Profile') {
            Navigator.push(
                // ignore: use_build_context_synchronously
                context,
                MaterialPageRoute(builder: (context) => ProfileView()));
          } else if (value == 'Logout') {}
        });
      },
    );
  }
}
