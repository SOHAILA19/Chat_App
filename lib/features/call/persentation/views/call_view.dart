import 'package:chatapp/core/shared_widgets/appbar_text.dart';
import 'package:chatapp/core/shared_widgets/option_icon.dart';
import 'package:chatapp/core/shared_widgets/search_icon.dart';
import 'package:chatapp/features/call/persentation/views/widgets/call_body.dart';
import 'package:flutter/material.dart';

class CallView extends StatelessWidget {
  const CallView({super.key});

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
      body: const Column(
        children: [
          Divider(
            color: Colors.grey, // Color of the line
            height: 1, // Thickness of the line
          ),
          CallBody(),
        ],
      ),
    );
  }
}
