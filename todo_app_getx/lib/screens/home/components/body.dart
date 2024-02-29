import 'package:flutter/material.dart';

import '../../../constants.dart';
import '../../../models/task.dart';
import 'custom_appbar.dart';
import 'task_card.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const CustomAppBar(),
            const SizedBox(height: kDefaultPadding),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
              child: Text('Today\'s task',
                  style: Theme.of(context).textTheme.headlineSmall),
            ),
            const SizedBox(height: kDefaultPadding/2),
            ...List.generate(
                demoTasks.length, (index) => TaskCard(task: demoTasks[index])),
          ],
        ),
      ),
    );
  }
}
