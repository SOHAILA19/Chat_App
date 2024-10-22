import 'package:chatapp/core/constants/asset_images.dart';
import 'package:chatapp/features/call/persentation/view_model/call_model.dart';
import 'package:chatapp/features/call/persentation/views/widgets/callers_list_view.dart';
import 'package:chatapp/features/call/persentation/views/widgets/title_call.dart';
import 'package:flutter/material.dart';

class CallBody extends StatelessWidget {
  const CallBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(child: const TitleCall(title: 'Recent')),
          CallersListView(
            callers: [
              CallerModel(
                  name: 'Marwan',
                  img: AssetImages.profilePicture,
                  time: 'Todat, 10:30 AM'),
              CallerModel(
                  name: 'Marwan',
                  img: AssetImages.profilePicture,
                  time: 'Todat, 10:30 AM'),
              CallerModel(
                  name: 'Marwan',
                  img: AssetImages.profilePicture,
                  time: 'Todat, 10:30 AM'),
              CallerModel(
                  name: 'Marwan',
                  img: AssetImages.profilePicture,
                  time: 'Todat, 10:30 AM'),
              CallerModel(
                  name: 'Marwan',
                  img: AssetImages.profilePicture,
                  time: 'Todat, 10:30 AM'),
              CallerModel(
                  name: 'Marwan',
                  img: AssetImages.profilePicture,
                  time: 'Todat, 10:30 AM'),
              CallerModel(
                  name: 'Marwan',
                  img: AssetImages.profilePicture,
                  time: 'Todat, 10:30 AM'),
            ],
          ),
        ],
      ),
    );
  }
}
