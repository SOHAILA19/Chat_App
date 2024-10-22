import 'package:chatapp/features/status/persentation/view_model/status_model.dart';
import 'package:chatapp/features/status/persentation/views/widgets/viewed_status.dart';
import 'package:flutter/material.dart';

class ViewedListView extends StatelessWidget {
  const ViewedListView({super.key, required this.viewedStatuses});
  final List<StatusModel> viewedStatuses;

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        (context, index) {
          return Container(
            padding: const EdgeInsets.all(8),
            height: 80,
            child: ViewedStatus(viewedStatus: viewedStatuses[index]),
          );
        },
        childCount: viewedStatuses.length,
      ),
    );
  }
}
