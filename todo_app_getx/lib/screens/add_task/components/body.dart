import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

import '../../../constants.dart';
import '../../../controllers/task_controller.dart';
import 'input_field.dart';

class Body extends StatefulWidget {
  const Body({super.key});

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  final TaskController _taskController = Get.put(TaskController());

  final TextEditingController _titleController = TextEditingController();
  final TextEditingController _noteController = TextEditingController();

  DateTime _selectedDate = DateTime.now();
  String _startTime = DateFormat('hh:mm a').format(DateTime.now()).toString();
  String _endTime = DateFormat('hh:mm a')
      .format(DateTime.now().add(const Duration(minutes: 15)))
      .toString();

  List<int> remindList = [5, 10, 15, 20];
  List<String> repeatList = ['none', 'Daily', 'Weekly', 'monthly'];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Padding(
      padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
      child: SingleChildScrollView(
        child: Column(
          children: [
            Text('Add Task', style: Theme.of(context).textTheme.headlineSmall),
            const SizedBox(height: kDefaultPadding / 2),
            InputField(
              title: 'Title',
              hintText: 'Enter title here',
              controller: _titleController,
            ),
            const SizedBox(height: kDefaultPadding / 2),
            InputField(
              title: 'Note',
              hintText: 'Enter note here',
              controller: _titleController,
            ),
            const SizedBox(height: kDefaultPadding / 2),
            InputField(
              title: 'Date',
              hintText: DateFormat.yMd().format(_selectedDate),
              suffixWidget: IconButton(
                onPressed: () {},
                icon: const Icon(Icons.calendar_today_outlined),
              ),
            ),
            const SizedBox(height: kDefaultPadding / 2),
            Row(
              children: [
                Expanded(child: InputField(title: 'Start Time', hintText: '')),
                const SizedBox(width: kDefaultPadding / 2),
                Expanded(child: InputField(title: 'End Time', hintText: ''))
              ],
            )
          ],
        ),
      ),
    ));
  }
}
