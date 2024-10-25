import 'package:chatapp/core/shared_widgets/appbar_text.dart';
import 'package:chatapp/core/shared_widgets/option_icon.dart';
import 'package:chatapp/core/shared_widgets/search_icon.dart';
import 'package:chatapp/features/status/persentation/views/widgets/status_body.dart';
import 'package:flutter/material.dart';

class StatusView extends StatelessWidget {
  const StatusView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const AppbarText(
          title: 'Whats Up',
        ),
        actions: const [
          SearchIcon(),
          OptionIcon(),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 15.0),
        child: const Column(
          children: [
            Divider(
              color: Colors.grey,
              height: 1,
            ),
            SizedBox(height: 15),
            StatusBody(),
          ],
        ),
      ),
    );
  }
}
