import 'package:flutter/material.dart';
import 'package:pict_ui/components/activity_status.dart';
import 'package:pict_ui/components/lesson_list.dart';
import 'package:pict_ui/models/favorites.dart';
import 'package:provider/provider.dart';

class ActivityPage extends StatelessWidget {
  const ActivityPage({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<Favorites>(
      create: (context) => Favorites(),
      child: const Column(
          children: [
            ActivityStatus(),
            LessonList(),
          ],
      ),
    );
  }
}

