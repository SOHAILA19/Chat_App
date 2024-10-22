import 'package:chatapp/features/status/persentation/view_model/status_model.dart';
import 'package:chatapp/features/status/persentation/views/widgets/recent_status.dart';
import 'package:flutter/material.dart';

class RecentListView extends StatelessWidget {
  const RecentListView({super.key, required this.recentStatuses});
  final List<StatusModel> recentStatuses;

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        (context, index) {
          return Container(
            padding: const EdgeInsets.all(8),
            height: 80,
            child: RecentStatus(recentStatus: recentStatuses[index]),
          );
        },
        childCount: recentStatuses.length, // Number of recent statuses
      ),
    );
  }
}
