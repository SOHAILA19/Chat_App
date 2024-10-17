import 'package:chatapp/core/shared_widgets/option_icon.dart';
import 'package:chatapp/core/shared_widgets/search_icon.dart';
import 'package:chatapp/core/shared_widgets/whatsup_text.dart';
import 'package:chatapp/features/status/persentation/views/widgets/status_body.dart';
import 'package:flutter/material.dart';

class StatusView extends StatelessWidget {
  const StatusView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const WhatsUpText(),
        actions: const [
          SearchIcon(),
          OptionIcon(),
        ],
      ),
      body:const Column(
        children: [
          Divider(
            color: Colors.grey,
            height: 1,
          ),
        StatusBody(),],),
    );
  }
}
