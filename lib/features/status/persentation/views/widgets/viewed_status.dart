import 'package:chatapp/features/status/persentation/view_model/status_model.dart';
import 'package:chatapp/features/status/persentation/views/widgets/name_status.dart';
import 'package:chatapp/features/status/persentation/views/widgets/time_status.dart';
import 'package:chatapp/features/status/persentation/views/widgets/viewed_picture.dart';
import 'package:flutter/material.dart';

class ViewedStatus extends StatelessWidget {
  const ViewedStatus({super.key, required this.viewedStatus});
  final StatusModel viewedStatus;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ViewedPicture(image: viewedStatus.image),
        const SizedBox(width: 20),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            NameStatus(name: viewedStatus.name),
            const SizedBox(height: 5),
            TimeStatus(
              time: viewedStatus.time,
            ),
          ],
        ),
      ],
    );
  }
}
