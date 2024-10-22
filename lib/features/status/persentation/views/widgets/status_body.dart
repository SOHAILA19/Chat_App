import 'package:chatapp/core/constants/asset_images.dart';
import 'package:chatapp/features/status/persentation/view_model/status_model.dart';
import 'package:chatapp/features/status/persentation/views/widgets/my_status.dart';
import 'package:chatapp/features/status/persentation/views/widgets/recent_list_view.dart';
import 'package:chatapp/features/status/persentation/views/widgets/title_status.dart';
import 'package:chatapp/features/status/persentation/views/widgets/viewed_list_view.dart';
import 'package:flutter/material.dart';

class StatusBody extends StatelessWidget {
  const StatusBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(child: const MyStatus()),
          SliverToBoxAdapter(child: const SizedBox(height: 20)),
          SliverToBoxAdapter(child: const TitleStatus(title: 'Recent updates')),
          SliverToBoxAdapter(child: const SizedBox(height: 10)),
          RecentListView(
            recentStatuses: [
              StatusModel(
                name: 'Marwan ali',
                image: AssetImages.profilePicture,
                time: 'Today, 12:00 PM',
              ),
              StatusModel(
                name: 'Marwan ali',
                image: AssetImages.profilePicture,
                time: 'Today, 12:00 PM',
              ),
              StatusModel(
                name: 'Marwan ali',
                image: AssetImages.profilePicture,
                time: 'Today, 12:00 PM',
              ),
              StatusModel(
                name: 'Marwan ali',
                image: AssetImages.profilePicture,
                time: 'Today, 12:00 PM',
              ),
              StatusModel(
                name: 'Marwan ali',
                image: AssetImages.profilePicture,
                time: 'Today, 12:00 PM',
              ),
            ],
          ),
          SliverToBoxAdapter(child: const SizedBox(height: 20)),
          SliverToBoxAdapter(child: const TitleStatus(title: 'Viewed updates')),
          SliverToBoxAdapter(child: const SizedBox(height: 10)),
          ViewedListView(
            viewedStatuses: [
              StatusModel(
                name: 'Marwan ali',
                image: AssetImages.profilePicture,
                time: 'Today, 12:00 PM',
              ),
              StatusModel(
                name: 'Marwan ali',
                image: AssetImages.profilePicture,
                time: 'Today, 12:00 PM',
              ),
              StatusModel(
                name: 'Marwan ali',
                image: AssetImages.profilePicture,
                time: 'Today, 12:00 PM',
              ),
              StatusModel(
                name: 'Marwan ali',
                image: AssetImages.profilePicture,
                time: 'Today, 12:00 PM',
              ),
              StatusModel(
                name: 'Marwan ali',
                image: AssetImages.profilePicture,
                time: 'Today, 12:00 PM',
              ),
            ],
          ),
        ],
      ),
    );
  }
}
