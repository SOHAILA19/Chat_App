import 'package:chatapp/features/home/persentation/view_model/chater_model.dart';
import 'package:chatapp/features/home/persentation/views/widgets/home_list_view.dart';
import 'package:flutter/material.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({super.key});

  @override
  Widget build(BuildContext context) {
    return HomeListView(
      chaters: [
        ChaterModel(
            name: 'rowan',
            number: '01023474456',
            time: '12:00 PM',
            messages: 2),
        ChaterModel(
            name: 'mohab ali',
            number: '011324564435',
            time: '12:00 PM',
            messages: 2),
        ChaterModel(
            name: 'mrawan ali',
            number: '011567875466',
            time: '12:00 PM',
            messages: 2),
      ],
    );
  }
}
