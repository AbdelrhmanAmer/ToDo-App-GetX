import 'package:flutter/material.dart';

import '../../../constants.dart';

class TextSection extends StatelessWidget {
  const TextSection({
    super.key,
    required this.title,
    required this.iconData,
    required this.description,
    this.color = Colors.white,
    this.iconHeight = 22,
  });

  final String title, description;
  final Color color;
  final IconData iconData;
  final double iconHeight;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Icon(iconData, color: Colors.white,),
            const SizedBox(width: kDefaultPadding / 2),
            Text(title,
                style: Theme.of(context)
                    .textTheme
                    .bodyLarge!
                    .copyWith(color: color, fontWeight: FontWeight.bold)),
          ],
        ),
        Text(
          description,
          style: Theme.of(context).textTheme.bodySmall!.copyWith(color: color),
        ),
      ],
    );
  }
}
