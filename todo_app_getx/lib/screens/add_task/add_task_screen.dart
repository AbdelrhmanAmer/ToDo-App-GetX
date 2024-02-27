import 'package:flutter/material.dart';
import 'package:todo_app_getx/screens/add_task/components/build_app_bar.dart';
import 'package:todo_app_getx/screens/add_task/components/body.dart';

class AddTaskScreen extends StatelessWidget {
  const AddTaskScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context),
      body: const Body(),
    );
  }
}
