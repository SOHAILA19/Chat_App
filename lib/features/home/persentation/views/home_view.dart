import 'package:chatapp/core/shared_widgets/option_icon.dart';
import 'package:chatapp/core/shared_widgets/search_icon.dart';
import 'package:chatapp/core/shared_widgets/whatsup_text.dart';
import 'package:chatapp/features/home/persentation/views/widgets/chat_icon.dart';
import 'package:chatapp/features/home/persentation/views/widgets/home_body.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

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
      body: const Column(
        children: [
          Divider(
            color: Colors.grey, // Color of the line
            height: 1, // Thickness of the line
          ),
          HomeBody(),
        ],
      ),
      floatingActionButton: const ChatIcon(),
      //floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
    );
  }
}
