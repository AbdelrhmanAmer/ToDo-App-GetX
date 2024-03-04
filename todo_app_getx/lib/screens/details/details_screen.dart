import 'package:flutter/material.dart';

import '../../models/task.dart';
import 'components/body.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({
    super.key,
    required this.task,
  });

  final Task task;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Task Details'),
        backgroundColor: task.cardColor,
        centerTitle: true,
      ),
      body: Body(task: task),
    );
  }
}

