import 'package:chatapp/features/status/persentation/views/widgets/picture_status.dart';
import 'package:flutter/material.dart';

class StatusBody extends StatelessWidget {
  const StatusBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        PictureStatus(),
      ],
    );
  }
}
