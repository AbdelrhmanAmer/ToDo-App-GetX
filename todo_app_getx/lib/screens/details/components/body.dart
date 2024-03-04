import 'package:flutter/material.dart';

import '../../../models/task.dart';
import 'heading/heading.dart';

class Body extends StatelessWidget {
  const Body({
    super.key,
    required this.task,
  });

  final Task task;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Heading(task: task),
        ],
      ),
    );
  }
}
