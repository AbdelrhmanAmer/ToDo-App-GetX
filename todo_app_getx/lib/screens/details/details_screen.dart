import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:todo_app_getx/components/beiezer_clipper.dart';

import '../../models/task.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({
    super.key,
    required this.task,
  });

  final Task task;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
            child: Column(
          children: [
            Stack(
              children: [
                Container(
                  height: MediaQuery.of(context).size.height * .34,
                  decoration: BoxDecoration(
                    color: task.cardColor,
                    borderRadius: const BorderRadius.only(
                      bottomLeft: Radius.circular(20),
                      bottomRight: Radius.circular(20),
                    ),
                  ),
                ),
                ClipPath(
                  clipper: BezierClipper(),
                  child: Container(
                    color: Colors.red,
                    height: MediaQuery.of(context).size.height * 0.34,
                    width: 50,
                  ),
                )
              ],
            )
          ],
        )),
      ),
    );
  }
}
