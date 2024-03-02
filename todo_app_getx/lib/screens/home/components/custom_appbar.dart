
import 'package:flutter/material.dart';

import '../../../constants.dart';
import 'page_title.dart';
import 'month_date_time_line.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 264,
      decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.secondary,
          borderRadius: const BorderRadius.only(bottomLeft: Radius.circular(10), bottomRight: Radius.circular(10))),
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
