import 'package:chatapp/features/status/persentation/view_model/status_model.dart';
import 'package:chatapp/features/status/persentation/views/widgets/name_status.dart';
import 'package:chatapp/features/status/persentation/views/widgets/recent_picture.dart';
import 'package:chatapp/features/status/persentation/views/widgets/time_status.dart';
import 'package:flutter/material.dart';

class RecentStatus extends StatelessWidget {
  const RecentStatus({super.key, required this.recentStatus});
  final StatusModel recentStatus;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        RecentPicture(image: recentStatus.image),
        const SizedBox(width: 20),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            NameStatus(name: recentStatus.name),
            const SizedBox(height: 5),
            TimeStatus(
              time: recentStatus.time,
            ),
          ],
        ),
      ],
    );
  }
}
