import 'package:flutter/material.dart';

import '../../../constants.dart';
import '../../../models/task.dart';
import 'due_date.dart';
import 'editable_title.dart';
import 'task_members.dart';




class Heading extends StatelessWidget {
  const Heading({
    super.key,
    required this.task,
  });

  final Task task;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: task.cardColor,
        borderRadius: const BorderRadius.only(
          bottomLeft: Radius.circular(20),
          bottomRight: Radius.circular(20),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.only(
          right: kDefaultPadding,
          left: kDefaultPadding,
          top: kDefaultPadding,
          bottom: kDefaultPadding + 10,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            EditableTitle(task: task),
            const SizedBox(height: kDefaultPadding),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                DueDate(task: task),
                TaskMembers(members: task.members)
              ],
            ),
          ],
        ),
      ),
    );
  }
}
