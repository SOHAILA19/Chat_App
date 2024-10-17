import 'package:chatapp/core/shared_widgets/option_icon.dart';
import 'package:chatapp/core/shared_widgets/search_icon.dart';
import 'package:chatapp/core/shared_widgets/whatsup_text.dart';
import 'package:chatapp/features/call/persentation/views/widgets/call_body.dart';
import 'package:flutter/material.dart';

class CallView extends StatelessWidget {
  const CallView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 1,
        title: const WhatsUpText(),
        actions: const [
          SearchIcon(),
          OptionIcon(),
        ],
      ),
      body: const CallBody(),
    );
  }
}
