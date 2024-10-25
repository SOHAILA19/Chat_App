import 'package:chatapp/core/shared_widgets/appbar_text.dart';
import 'package:chatapp/core/shared_widgets/option_icon.dart';
import 'package:chatapp/core/shared_widgets/search_icon.dart';
import 'package:chatapp/features/home/persentation/views/widgets/chat_icon.dart';
import 'package:chatapp/features/home/persentation/views/widgets/home_body.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

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
            color: Colors.grey,
            height: 1,
          ),
          HomeBody(),
        ],
      ),
      floatingActionButton: const ChatIcon(),
    );
  }
}
