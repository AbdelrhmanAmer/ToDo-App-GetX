import 'package:flutter/material.dart';

import '../constants.dart';

class Task {
  final String title;
  final String description;
  final int startTime;
  final int endTime;
  final int remind;
  final String startTimePeriod;
  final String endTimePeriod;
  final String repeat;
  final double completionPercentage;
  final Color cardColor;
  Color chartColor;
  DateTime dateTime;

  Task(
      {required this.title,
      required this.startTime,
      required this.endTime,
      required this.startTimePeriod,
      required this.endTimePeriod,
      required this.completionPercentage,
      this.description =
          'Some Android OEMs have their own customised Android OS that can prevent applications from running in the background. Consequently, scheduled notifications may not work when the application is in the background on certain devices (e.g. by Xiaomi, Huawei).',
      this.remind = 5,
      this.repeat = 'none',
      this.cardColor = kSecondaryColor,
      this.chartColor = Colors.orange})
      : dateTime = DateTime.now();
}

List<Color> chartColors = [
  Colors.white,
  const Color(0xFF39A7F9),
  const Color(0xFF4EDA66),
  const Color(0xFFDE2968),
  const Color.fromARGB(255, 255, 187, 85),
];

List<Task> demoTasks = [
  Task(
    title: 'Meeting with Team',
    startTime: 9,
    endTime: 10,
    startTimePeriod: 'AM',
    endTimePeriod: 'AM',
    completionPercentage: 70,
    cardColor: const Color(0xFF724FD2),
    chartColor: Colors.white,
  ),
  Task(
    title: 'Lunch Break',
    startTime: 12,
    endTime: 13,
    startTimePeriod: 'PM',
    endTimePeriod: 'PM',
    completionPercentage: 60,
    chartColor: const Color(0xFF39A7F9),
  ),
  Task(
    title: 'Project Presentation',
    startTime: 14,
    endTime: 16,
    startTimePeriod: 'PM',
    endTimePeriod: 'PM',
    completionPercentage: 80,
    chartColor: const Color(0xFF4EDA66),
  ),
  Task(
    title: 'Coding Session',
    startTime: 18,
    endTime: 20,
    startTimePeriod: 'PM',
    endTimePeriod: 'PM',
    completionPercentage: 90,
    chartColor: const Color(0xFFDE2968),
  ),
  Task(
    title: 'Read a Book',
    startTime: 20,
    endTime: 21,
    startTimePeriod: 'PM',
    endTimePeriod: 'PM',
    completionPercentage: 30,
    chartColor: Colors.white,
  ),
];
