import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

import '../../../constants.dart';
import '../../../controllers/task_controller.dart';
import 'color_dot.dart';
import 'custom_drop_btn.dart';
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

  final DateTime _selectedDate = DateTime.now();
  final String _startTime = DateFormat('hh:mm a').format(DateTime.now()).toString();
  final String _endTime = DateFormat('hh:mm a')
      .format(DateTime.now().add(const Duration(minutes: 15)))
      .toString();

  List<int> remindList = [5, 10, 15, 20];
  int _selectedRemind = 5;

  List<Color> colorList = [Colors.blue, Colors.pink, Colors.orange];
  int _selectedColorIndex = 0;

  List<String> repeatList = ['none', 'Daily', 'Weekly', 'monthly'];
  String _selectedRepeat = 'none';

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Padding(
      padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
      child: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: kDefaultPadding / 3),
            Text('Add Task', style: Theme.of(context).textTheme.headlineSmall),
            const SizedBox(height: kDefaultPadding / 3),
            InputField(
              title: 'Title',
              hintText: 'Enter title here',
              controller: _titleController,
            ),
            const SizedBox(height: kDefaultPadding / 3),
            InputField(
              title: 'Note',
              hintText: 'Enter note here',
              controller: _noteController,
            ),
            const SizedBox(height: kDefaultPadding / 3),
            InputField(
              title: 'Date',
              hintText: DateFormat.yMd().format(_selectedDate),
              widget: IconButton(
                onPressed: () {},
                icon: const Icon(Icons.calendar_today_outlined),
              ),
            ),
            const SizedBox(height: kDefaultPadding / 3),
            Row(
              children: [
                Expanded(
                    child: InputField(
                  title: 'Start Time',
                  hintText: _startTime,
                  widget: IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.access_time_rounded, size: 22),
                  ),
                )),
                const SizedBox(width: kDefaultPadding / 2),
                Expanded(
                    child: InputField(
                  title: 'End Time',
                  hintText: _endTime,
                  widget: IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.access_time_rounded, size: 22),
                  ),
                ))
              ],
            ),
            const SizedBox(height: kDefaultPadding / 3),
            InputField(
              title: 'Remind',
              hintText: '$_selectedRemind minutes only',
              enabled: false,
              widget: CustomDropButton(
                onChanged: (value) =>
                    setState(() => _selectedRemind = value as int),
                list: remindList,
              ),
            ),
            const SizedBox(height: kDefaultPadding / 3),
            InputField(
              title: 'Repeat',
              hintText: _selectedRepeat,
              enabled: false,
              widget: CustomDropButton(
                onChanged: (value) =>
                    setState(() => _selectedRepeat = value as String),
                list: repeatList,
              ),
            ),
            const SizedBox(height: kDefaultPadding / 3),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Color', style: Theme.of(context).textTheme.bodyLarge),
                    const SizedBox(height: kDefaultPadding / 4),
                    Row(
                      children: List.generate(
                        3,
                        (index) => ColorDot(
                          color: colorList[index],
                          index: index,
                          isSelected: _selectedColorIndex == index,
                          onChanged: (selected) {
                            setState(() {
                              _selectedColorIndex = selected;
                            });
                          },
                        ),
                      ),
                    )
                  ],
                ),
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                      backgroundColor: kPrimaryColor,
                      foregroundColor: Colors.white70,
                      textStyle: Theme.of(context).textTheme.bodyMedium,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10))),
                  child: const Text('Create Task'),
                )
              ],
            ),
            const SizedBox(height: kDefaultPadding),
          ],
        ),
      ),
    ));
  }
}
