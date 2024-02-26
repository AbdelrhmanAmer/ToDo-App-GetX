import 'package:flutter/material.dart';

import '../../../constants.dart';

class CustomDropButton extends StatefulWidget {
  const CustomDropButton(
      {super.key, required this.list, required this.onChanged});

  final List<Object> list;
  final Function(Object value) onChanged;

  @override
  State<CustomDropButton> createState() => _CustomDropButtonState();
}

class _CustomDropButtonState extends State<CustomDropButton> {
  dynamic _selectedValue;

  @override
  Widget build(BuildContext context) {
    return DropdownButton(
      dropdownColor: kPrimaryColor,
      items: widget.list
          .map((value) => DropdownMenuItem(
                value: value,
                child: Text(
                  '$value',
                  style: const TextStyle(color: Colors.white),
                ),
              ))
          .toList(),
      icon: const Icon(Icons.keyboard_arrow_down),
      borderRadius: BorderRadius.circular(14),
      iconSize: 32,
      elevation: 8,
      underline: Container(height: 0),
      onChanged: (newValue) {
        setState(() {
          _selectedValue = newValue;
        });
        widget.onChanged(_selectedValue);
      },
    );
  }
}
