import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../../../../constants.dart';
import '../../../../models/task.dart';

class DueDate extends StatelessWidget {
  const DueDate({
    super.key,
    required this.task,
  });

  final Task task;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text('Due date', style: TextStyle(height: 2)),
        Row(
          children: [
            Icon(
              CupertinoIcons.alarm,
              color: Colors.white.withOpacity(.8),
              size: 18,
            ),
            const SizedBox(width: kDefaultPadding / 2),
            Text(
                '${task.startTime}  ${task.startTimePeriod} - ${task.endTime}  ${task.endTimePeriod}',
                style: TextStyle(
                    color: Colors.white.withOpacity(.8), fontSize: 16)),
            const SizedBox(width: kDefaultPadding + 10),
            Icon(
              Icons.date_range_outlined,
              color: Colors.white.withOpacity(.8),
              size: 18,
            ),
            const SizedBox(width: kDefaultPadding / 2),
            Text(
              DateFormat.MMMd().format(task.dateTime),
              style:
                  TextStyle(color: Colors.white.withOpacity(.8), fontSize: 16),
            ),
          ],
        )
      ],
    );
  }
}
