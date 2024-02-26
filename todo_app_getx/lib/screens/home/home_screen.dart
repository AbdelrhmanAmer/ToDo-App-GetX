import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:todo_app_getx/screens/add_task/add_task_screen.dart';

import 'components/body.dart';
import 'components/build_app_bar.dart';
import 'components/floating_btn.dart';

class HomeScreen extends StatelessWidget {
  static String routeName = '/home';
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context),
      body: const Body(),
      floatingActionButton: FloatingButton(press: () {
        Get.to(const AddTaskScreen());
      }),
    );
  }
}
