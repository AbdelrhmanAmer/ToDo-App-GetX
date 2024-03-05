import 'package:flutter/material.dart';

import '../../../constants.dart';
import '../../../models/task.dart';
import 'description.dart';
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
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Heading(task: task),
          const SizedBox(height: kDefaultPadding),
          Description(task: task),
        ],
      ),
    );
  }
}

