import 'package:chatapp/features/home/persentation/view_model/chater_model.dart';
import 'package:chatapp/features/home/persentation/views/widgets/chat_time.dart';
import 'package:chatapp/features/home/persentation/views/widgets/chater_name.dart';
import 'package:chatapp/features/home/persentation/views/widgets/chater_number.dart';
import 'package:chatapp/features/home/persentation/views/widgets/chater_picture.dart';
import 'package:chatapp/features/home/persentation/views/widgets/mssg_number.dart';
import 'package:flutter/material.dart';

class OneChater extends StatelessWidget {
  const OneChater({
    super.key,
    required this.chater,
  });
  final ChaterModel chater;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const ChaterPicture(),
          const SizedBox(width: 20),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ChaterName(name: chater.name),
              const SizedBox(height: 5),
              ChaterNumber(number: chater.number),
            ],
          ),
          const SizedBox(width: 100),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              ChatTime(time: chater.time),
              const SizedBox(height: 5),
              MssgNumber(messages: chater.messages),
            ],
          ),
        ],
      ),
    );
  }
}
