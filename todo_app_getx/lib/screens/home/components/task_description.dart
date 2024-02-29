import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../../../constants.dart';

class TaskDescription extends StatelessWidget {
  const TaskDescription({
    super.key,
    required this.title,
    required this.startTime,
    required this.endTime,
    required this.startTimePeriod,
    required this.endTimePeriod,
    required this.dateTime,
  });
  final String title;
  final int startTime, endTime;
  final String startTimePeriod, endTimePeriod;
  final DateTime dateTime;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(title,
              style: Theme.of(context).textTheme.bodySmall),
          Row(
            children: [
              Icon(
                CupertinoIcons.alarm,
                color:
                    Theme.of(context).colorScheme.onBackground.withOpacity(.5),
                size: 14,
              ),
              const SizedBox(width: kDefaultPadding / 4),
              Text(
                '$startTime $startTimePeriod - $endTime $endTimePeriod',
                style: TextStyle(
                    color: Theme.of(context)
                        .colorScheme
                        .onBackground
                        .withOpacity(.5),
                    fontSize: 14),
              ),
            ],
          ),
          Row(
            children: [
              Icon(
                Icons.date_range_outlined,
                color:
                    Theme.of(context).colorScheme.onBackground.withOpacity(.5),
                size: 14,
              ),
              const SizedBox(width: kDefaultPadding / 4),
              Text(
                DateFormat.MMMd().format(dateTime),
                style: TextStyle(
                    color: Theme.of(context)
                        .colorScheme
                        .onBackground
                        .withOpacity(.5),
                    fontSize: 14),
              ),
            ],
          )
        ],
      ),
    );
  }
}

