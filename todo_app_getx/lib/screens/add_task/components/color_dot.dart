import 'package:flutter/cupertino.dart';

import '../../../constants.dart';

class ColorDot extends StatelessWidget {
  const ColorDot(
      {super.key,
      required this.onChanged,
      required this.index,
      required this.color,
      required this.isSelected});

  final Function(int value) onChanged;
  final int index;
  final Color color;
  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onChanged(index);
      },
      child: Container(
        height: 26,
        width: 26,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: color,
        ),
        margin: const EdgeInsets.only(right: kDefaultPadding / 2),
        padding: const EdgeInsets.all(6),
        child: isSelected
            ? Icon(CupertinoIcons.add)
            : null,
      ),
    );
  }
}
