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
    double size = MediaQuery.of(context).size.height;
    print(size);
    return Container(
      height: size < 510
          ? size * .55
          : size < 540
              ? size * .5
              : size < 563
                  ? size * .47
                  : size < 590
                      ? size * .45
                      : size < 634
                          ? size * .43
                          : size < 600
                              ? size * .4
                              : size * .41,
      decoration: BoxDecoration(color: Theme.of(context).colorScheme.secondary),
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
