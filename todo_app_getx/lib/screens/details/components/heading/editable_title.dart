import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../models/task.dart';

class EditableTitle extends StatelessWidget {
  const EditableTitle({
    super.key,
    required this.task,
  });

  final Task task;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Task title',
              style: TextStyle(height: 2),
            ),
            Text(task.title, style: Theme.of(context).textTheme.titleLarge),
          ],
        ),
        IconButton(
          icon: Container(
            height: 30,
            padding: const EdgeInsets.all(6),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.black.withOpacity(.2),
            ),
            child: SvgPicture.asset(
              'assets/icons/edit.svg',
              colorFilter: ColorFilter.mode(
                  Theme.of(context).colorScheme.onSurface, BlendMode.srcIn),
            ),
          ),
          onPressed: () {},
        )
      ],
    );
  }
}
