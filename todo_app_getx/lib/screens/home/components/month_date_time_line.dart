import 'package:easy_date_timeline/easy_date_timeline.dart';
import 'package:flutter/material.dart';
import 'package:get/utils.dart';

import '../../../constants.dart';

class MonthDateTimeLine extends StatelessWidget {
  const MonthDateTimeLine({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return EasyDateTimeLine(
      initialDate: DateTime.now(),
      headerProps: EasyHeaderProps(
        showHeader: true,
        showMonthPicker: true,
        showSelectedDate: true,
        selectedDateStyle: TextStyle(
            color: Theme.of(context).colorScheme.onPrimary, fontSize: 22),
        centerHeader: true,
        monthPickerType: MonthPickerType.dropDown,
        monthStyle: TextStyle(
            fontSize: 20, color: Theme.of(context).colorScheme.onPrimary),
        dateFormatter: const DateFormatter.custom('yyy'),
        padding: const EdgeInsets.only(bottom: kDefaultPadding / 1.5),
      ),
      itemBuilder: (ctx, day, weak, month, dateTime, selected) {
        return Container(
          padding: EdgeInsets.only(
            left: kDefaultPadding / 2,
            right: kDefaultPadding / 2,
            top: !selected ? kDefaultPadding / 2 : 0.0,
          ),
          child: RichText(
            text: TextSpan(children: [
              TextSpan(
                text: '$day\n',
                style: TextStyle(
                  height: 1.2,
                  fontWeight: selected ? FontWeight.w500 : FontWeight.w400,
                  fontSize: selected ? 35 : 25,
                  color: selected
                      ? Theme.of(context).colorScheme.onPrimary
                      : Theme.of(context)
                          .colorScheme
                          .onSurface
                          .withOpacity(.3),
                ),
              ),
              TextSpan(
                text: weak.capitalizeFirst,
                style: TextStyle(
                  height: selected ? 2 : 1.7,
                  fontWeight: selected ? FontWeight.w400 : FontWeight.w300,
                  fontSize: selected ? 17 : 14,
                  color: selected
                      ? Theme.of(context).colorScheme.onPrimary
                      : Theme.of(context)
                          .colorScheme
                          .onSurface
                          .withOpacity(.3),
                ),
              )
            ]),
          ),
        );
      },
    );
  }
}
