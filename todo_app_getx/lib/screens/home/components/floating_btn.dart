import 'package:flutter/material.dart';

class FloatingButton extends StatelessWidget {
  const FloatingButton({
    super.key,
    required this.press,
    this.toolTip = 'Add Task',
    this.iconData = Icons.add,
    this.radius = 50.0,
  });
  final Function() press;
  final String toolTip;
  final IconData iconData;
  final double radius;

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: press,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(radius)),
      tooltip: toolTip,
      child: Icon(iconData, color: Theme.of(context).colorScheme.surface,),
    );
  }
}
