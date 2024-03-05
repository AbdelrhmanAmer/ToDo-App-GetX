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
  List<String> members;
  Color chartColor;
  DateTime dateTime;

  Task(
      {required this.title,
      required this.startTime,
      required this.endTime,
      required this.startTimePeriod,
      required this.endTimePeriod,
      required this.completionPercentage,
      required this.members,
      this.description =
          'Some Android OEMs have their own customised Android OS that can prevent applications from running in the background. Consequently, scheduled notifications may not work when the application is in the background.',
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
    members: [
      'https://img.freepik.com/free-photo/portrait-white-man-isolated_53876-40306.jpg',
      'https://images.unsplash.com/photo-1542909168-82c3e7fdca5c?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8OHx8ZmFjZXxlbnwwfHwwfHw%3D&w=1000&q=80',
      'https://i0.wp.com/post.medicalnewstoday.com/wp-content/uploads/sites/3/2020/03/GettyImages-1092658864_hero-1024x575.jpg?w=1155&h=1528',
      'https://www.heysaturday.co/wp-content/uploads/2016/11/Best-online-dating-photos.jpg',
      'https://www.heysaturday.co/wp-content/uploads/2016/11/Best-online-dating-photos.jpg',
    ],
    description: 'Discuss project updates and upcoming tasks with the team.',
  ),
  Task(
    title: 'Lunch Break',
    startTime: 1,
    endTime: 2,
    startTimePeriod: 'PM',
    endTimePeriod: 'PM',
    completionPercentage: 60,
    chartColor: const Color(0xFF39A7F9),
    members: [
      'https://www.mensjournal.com/.image/c_limit%2Ccs_srgb%2Cq_auto:good%2Cw_700/MTk2MTM2NTcwNDMxMjg0NzQx/man-taking-selfie.webp',
      'https://as2.ftcdn.net/v2/jpg/02/07/68/43/1000_F_207684339_dFUUI0leWvNaKJR6Da0ZswUhLI4YzIGT.jpg',
      'https://www.heysaturday.co/wp-content/uploads/2016/11/Best-online-dating-photos.jpg',
      'https://i0.wp.com/post.medicalnewstoday.com/wp-content/uploads/sites/3/2020/03/GettyImages-1092658864_hero-1024x575.jpg?w=1155&h=1528',
    ],
    description: 'Take a break and recharge with a delicious lunch.',
  ),
  Task(
    title: 'Project Presentation',
    startTime: 2,
    endTime: 4,
    startTimePeriod: 'PM',
    endTimePeriod: 'PM',
    completionPercentage: 80,
    chartColor: const Color(0xFF4EDA66),
    members: [
      'https://as2.ftcdn.net/v2/jpg/02/07/68/43/1000_F_207684339_dFUUI0leWvNaKJR6Da0ZswUhLI4YzIGT.jpg',
    ],
    description: 'Present the latest project updates and gather feedback.',
  ),
  Task(
    title: 'Coding Session',
    startTime: 6,
    endTime: 8,
    startTimePeriod: 'PM',
    endTimePeriod: 'PM',
    completionPercentage: 90,
    chartColor: const Color(0xFFDE2968),
    members: [
      'https://images.unsplash.com/photo-1542909168-82c3e7fdca5c?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8OHx8ZmFjZXxlbnwwfHwwfHw%3D&w=1000&q=80',
    ],
    description: 'Code and work on the assigned development tasks.',
  ),
  Task(
    title: 'Read a Book',
    startTime: 8,
    endTime: 11,
    startTimePeriod: 'PM',
    endTimePeriod: 'PM',
    completionPercentage: 30,
    chartColor: Colors.white,
    members: [
      'https://www.mensjournal.com/.image/c_limit%2Ccs_srgb%2Cq_auto:good%2Cw_700/MTk2MTM2NTcwNDMxMjg0NzQx/man-taking-selfie.webp',
    ],
    description: 'Spend some quality time reading an interesting book.',
  ),
];
