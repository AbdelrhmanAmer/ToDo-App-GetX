import 'package:flutter/material.dart';

import '../../../constants.dart';
import '../../../models/task.dart';
import 'task_chart.dart';
import 'task_description.dart';

class TaskCard extends StatelessWidget {
  const TaskCard({
    super.key,
    required this.task,
  });
  final Task task;

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
      child: Row(
        children: [
          Expanded(
            child: Text(
              '${task.startTime} ${task.startTimePeriod}',
              style:
                  TextStyle(color: Theme.of(context).colorScheme.onBackground),
              textAlign: TextAlign.center,
            ),
          ),
          const SizedBox(width: kDefaultPadding),
          Container(
            width: screenWidth * .68,
            padding: const EdgeInsets.symmetric(
                horizontal: kDefaultPadding / 1.5,
                vertical: kDefaultPadding / 2),
            decoration: BoxDecoration(
              color: task.cardColor,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TaskDescription(
                  title: task.title,
                  startTime: task.startTime,
                  endTime: task.endTime,
                  startTimePeriod: task.startTimePeriod,
                  endTimePeriod: task.endTimePeriod,
                  dateTime: task.dateTime,
                ),
                const SizedBox(width: kDefaultPadding / 3),
                TaskChart(completionPercentage: task.completionPercentage),
                const SizedBox(width: kDefaultPadding / 3),
              ],
            ),
          )
        ],
      ),
    );
  }
}
