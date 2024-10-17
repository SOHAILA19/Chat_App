import 'package:chatapp/features/home/persentation/view_model/chater_model.dart';
import 'package:chatapp/features/home/persentation/views/widgets/one_chater.dart';
import 'package:flutter/material.dart';

class HomeListView extends StatelessWidget {
  const HomeListView({super.key, required this.chaters});
  final List<ChaterModel> chaters;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemCount: chaters.length,
        itemBuilder: (BuildContext context, int index) {
          return OneChater(
            chater: chaters[index],
          );
        },
      ),
    );
  }
}
