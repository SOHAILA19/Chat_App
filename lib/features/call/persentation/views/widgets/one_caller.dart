import 'package:chatapp/core/constants/asset_images.dart';
import 'package:chatapp/features/call/persentation/view_model/call_model.dart';
import 'package:chatapp/features/call/persentation/views/widgets/call_time.dart';
import 'package:chatapp/features/call/persentation/views/widgets/caller_name.dart';
import 'package:chatapp/features/call/persentation/views/widgets/caller_picture.dart';
import 'package:chatapp/features/call/persentation/views/widgets/calll_icon.dart';
import 'package:flutter/material.dart';

class OneCaller extends StatelessWidget {
  const OneCaller({super.key, required this.caller});
  final CallerModel caller;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 15),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const CallerPicture(image: AssetImages.profilePicture),
          const SizedBox(width: 20),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CallerName(name: caller.name),
              const SizedBox(height: 5),
              CallerTime(time: caller.time),
            ],
          ),
          const SizedBox(width: 120),
          CalllIcon(),
        ],
      ),
    );
  }
}
