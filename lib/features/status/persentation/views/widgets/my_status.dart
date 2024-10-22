import 'package:chatapp/core/themes/styles.dart';
import 'package:chatapp/features/status/persentation/views/widgets/name_status.dart';
import 'package:flutter/material.dart';

import 'my_picture.dart';

class MyStatus extends StatelessWidget {
  const MyStatus({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        MyPicture(),
        const SizedBox(width: 20),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            NameStatus(name: 'My Status'),
            const SizedBox(height: 5),
            Text(
              "Tap to add status update",
              style: Styles.textStyle15.copyWith(color: Colors.grey),
            ),
          ],
        ),
      ],
    );
  }
}
