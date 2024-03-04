import 'package:flutter/material.dart';

import '../../../models/task.dart';
import '../../../constants.dart';
import 'due_date.dart';
import 'editable_title.dart';

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
        Container(
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
                    Row(
                      children: [
                        for (int i = 0; i < 3; i++)
                          i < task.persons.length
                              ? Align(
                                  widthFactor: .6,
                                  child: CircleAvatar(
                                    backgroundColor: Colors.white,
                                    radius: 18,
                                    child: CircleAvatar(
                                      radius: 16,
                                      backgroundImage:
                                          NetworkImage(task.persons[i]),
                                    ),
                                  ),
                                )
                              : Container(),
                        if (task.persons.length > 3)
                          Align(
                            widthFactor: .6,
                            child: CircleAvatar(
                              radius: 16,
                              backgroundColor: Colors.white,
                              child: Text(
                                '${task.persons.length - 3}+',
                                style: TextStyle(
                                    color:
                                        Theme.of(context).colorScheme.surface,
                                    fontSize: 15),
                              ),
                            ),
                          )
                      ],
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
      ],
    ));
  }
}

