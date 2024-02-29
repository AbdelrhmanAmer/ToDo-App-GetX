import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class TaskChart extends StatelessWidget {
  const TaskChart({
    super.key,
    required this.completionPercentage,
  });
  final double completionPercentage;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40,
      width: 40,
      child: Stack(
        alignment: Alignment.center,
        children: [
          PieChart(
            PieChartData(
              centerSpaceRadius: 20,
              startDegreeOffset: -90,
              sections: [
                PieChartSectionData(
                  value: completionPercentage,
                  showTitle: false,
                  radius: 4,
                ),
                PieChartSectionData(
                  color: Theme.of(context).colorScheme.background,
                  value: 100 - completionPercentage,
                  showTitle: false,
                  radius: 4,
                ),
              ],
            ),
          ),
          Text(
            '$completionPercentage',
            style: const TextStyle(fontSize: 14),
          )
        ],
      ),
    );
  }
}
