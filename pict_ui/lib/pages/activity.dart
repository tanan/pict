import 'package:flutter/material.dart';
import 'package:pict_ui/components/activity_status.dart';

class ActivityPage extends StatelessWidget {
  const ActivityPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        ActivityStatus(),
      ],
    );
  }
}

