import 'package:chatapp/features/call/persentation/view_model/call_model.dart';
import 'package:chatapp/features/call/persentation/views/widgets/one_caller.dart';
import 'package:flutter/material.dart';

class CallersListView extends StatelessWidget {
  const CallersListView({super.key, required this.callers});
  final List<CallerModel> callers;

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        (context, index) {
          return Container(
            padding: const EdgeInsets.all(8),
            height: 80,
            child: OneCaller(caller: callers[index]),
          );
        },
        childCount: callers.length,
      ),
    );
  }
}
