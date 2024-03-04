import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:todo_app_getx/screens/details/details_screen.dart';

import '../../../constants.dart';
import '../../../models/task.dart';
import 'custom_appbar.dart';
import 'task_card.dart';
import 'task_not_found.dart';

class Body extends StatefulWidget {
  const Body({super.key});

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const CustomAppBar(),
            const SizedBox(height: kDefaultPadding),
            if (demoTasks.isEmpty)
              const TasksNotFound()
            else
              ...List.generate(
                demoTasks.length,
                (index) => TaskCard(
                  task: demoTasks[index],
                  press: () =>
                      Get.to(() => DetailsScreen(task: demoTasks[index])),
                ),
              ),
          ],
        ),
      ),
    );
  }
}
