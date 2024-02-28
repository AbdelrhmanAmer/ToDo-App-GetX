import 'package:flutter/material.dart';

import '../../../constants.dart';
import 'buildAppBar.dart';
import 'month_date_time_line.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    super.key,
  });


  @override
  Widget build(BuildContext context) {
    double size = MediaQuery.of(context).size.height;
    return Container(
      height: size * .40,
      decoration:
          BoxDecoration(color: Theme.of(context).colorScheme.secondary),
      padding: const EdgeInsets.symmetric(vertical: kDefaultPadding / 2),
      child: const Column(
        children: [
          PageTitle(),
          SizedBox(height: kDefaultPadding),
          MonthDateTimeLine(),
        ],
      ),
    );
  }
}


