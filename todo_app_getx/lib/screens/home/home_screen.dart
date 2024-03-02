import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../controllers/task_controller.dart';
import '../add_task/add_task_screen.dart';
import 'components/body.dart';
import 'components/floating_btn.dart';

class HomeScreen extends StatelessWidget {
  static String routeName = '/home';
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final TaskController taskController = Get.put(TaskController());

    return Scaffold(
      // appBar: buildAppBar(context),
      body: const Body(),
      floatingActionButton: FloatingButton(
        press: () async {
          await Get.to(const AddTaskScreen());
          // _taskController.getTasks();
        },
      ),
    );
  }
}
