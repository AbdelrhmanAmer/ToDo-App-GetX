import 'dart:math';

import 'package:flutter/material.dart';

import '../constants.dart';

class Task {
  final String title;
  final int startTime;
  final int endTime;
  final String startTimePeriod;
  final String endTimePeriod;
  final double completionPercentage;
  final Color cardColor;
  DateTime dateTime;
  Color? chartColor;

  Task({
    required this.title,
    required this.startTime,
    required this.endTime,
    required this.startTimePeriod,
    required this.endTimePeriod,
    required this.completionPercentage,
    this.cardColor = kSecondaryColor,
  })  : chartColor = chartColors[Random().nextInt(chartColors.length)],
        dateTime = DateTime.now();
}

List<Color> chartColors = [
  Colors.white,
  Colors.blue,
  Colors.green,
  Colors.red,
  Colors.orange,
];

List<Task> demoTasks = [
  Task(
    title: 'Meeting with Team',
    startTime: 9,
    endTime: 10,
    startTimePeriod: 'AM',
    endTimePeriod: 'AM',
    completionPercentage: 70,
  ),
  Task(
    title: 'Lunch Break',
    startTime: 12,
    endTime: 13,
    startTimePeriod: 'PM',
    endTimePeriod: 'PM',
    completionPercentage: 30,
  ),
  Task(
    title: 'Project Presentation',
    startTime: 14,
    endTime: 16,
    startTimePeriod: 'PM',
    endTimePeriod: 'PM',
    completionPercentage: 80,
  ),
  Task(
    title: 'Coding Session',
    startTime: 18,
    endTime: 20,
    startTimePeriod: 'PM',
    endTimePeriod: 'PM',
    completionPercentage: 60,
  ),
  Task(
    title: 'Read a Book',
    startTime: 20,
    endTime: 21,
    startTimePeriod: 'PM',
    endTimePeriod: 'PM',
    completionPercentage: 20,
  ),
  Task(
    title: 'Exercise',
    startTime: 7,
    endTime: 8,
    startTimePeriod: 'AM',
    endTimePeriod: 'AM',
    completionPercentage: 90,
  ),
  Task(
    title: 'Movie Night',
    startTime: 22,
    endTime: 23,
    startTimePeriod: 'PM',
    endTimePeriod: 'PM',
    completionPercentage: 40,
  ),
];
