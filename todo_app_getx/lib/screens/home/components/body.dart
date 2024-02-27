import 'package:flutter/material.dart';

import '../../../constants.dart';
import 'home_header.dart';
import 'month_date_time_line.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    double size = MediaQuery.of(context).size.height;

    return SafeArea(
      child: Column(
        children: [
          Container(
            height: size * .35,
            decoration:
                BoxDecoration(color: Theme.of(context).colorScheme.secondary),
            padding: const EdgeInsets.symmetric(vertical: kDefaultPadding / 2),
            child: const Column(
              children: [
                HomeHeader(),
                SizedBox(height: kDefaultPadding),
                MonthDateTimeLine(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}


