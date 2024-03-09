import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../constants.dart';
import '../../../models/task.dart';

class Description extends StatelessWidget {
  const Description({
    super.key,
    required this.task,
  });
  final Task task;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Descriptions',
            style: Theme.of(context).textTheme.titleMedium,
          ),
          const SizedBox(height: kDefaultPadding / 2),
          Container(
            padding: const EdgeInsets.symmetric(
              horizontal: kDefaultPadding,
              vertical: kDefaultPadding / 2,
            ),
            decoration: BoxDecoration(
              border: Border.all(
                color:
                    Theme.of(context).colorScheme.onBackground.withOpacity(.2),
              ),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Text(
              task.description,
              style: TextStyle(
                  fontSize: 14,
                  color: Theme.of(context).colorScheme.onBackground),
            ),
          ),
          const SizedBox(height: kDefaultPadding / 2),
          Container(
            padding: const EdgeInsets.all(kDefaultPadding),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Theme.of(context).colorScheme.secondary),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'File & Links',
                  style: TextStyle(
                      fontSize: 14,
                      color: Theme.of(context).colorScheme.onBackground),
                ),
                const SizedBox(width: kDefaultPadding),
                SvgPicture.asset(
                  'assets/icons/excel.svg',
                  height: 35,
                  colorFilter: const ColorFilter.mode(
                      Colors.greenAccent, BlendMode.srcIn),
                ),
                const SizedBox(width: kDefaultPadding / 2),
                SvgPicture.asset(
                  'assets/icons/word.svg',
                  height: 35,
                  colorFilter: const ColorFilter.mode(
                      Colors.blueAccent, BlendMode.srcIn),
                ),
                const SizedBox(width: kDefaultPadding / 2),
                SvgPicture.asset(
                  'assets/icons/pdf.svg',
                  height: 35,
                  colorFilter:
                      const ColorFilter.mode(Colors.redAccent, BlendMode.srcIn),
                ),
                const SizedBox(width: kDefaultPadding / 2),
                SvgPicture.asset(
                  'assets/icons/non_file.svg',
                  height: 35,
                  colorFilter:
                      const ColorFilter.mode(Colors.white, BlendMode.srcIn),
                ),
              ],
            ),
          ),
          const SizedBox(height: kDefaultPadding),
          
          const SizedBox(height: kDefaultPadding),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                flex: 5,
                child: SliderTheme(
                  data: SliderTheme.of(context).copyWith(
                    trackHeight: 10,
                  ),
                  child: Slider(
                    value: task.completionPercentage,
                    onChanged: (value) {},
                    max: 100,
                    activeColor: Colors.greenAccent,
                    inactiveColor: Theme.of(context).colorScheme.secondary,
                  ),
                ),
              ),
              Text(
                '${task.completionPercentage}%',
                style:
                    TextStyle(color: Colors.white, fontSize: 20),
              )
            ],
          )
        ],
      ),
    );
  }
}
