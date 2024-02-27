import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../constants.dart';

class InputField extends StatelessWidget {
  const InputField({
    super.key,
    required this.title,
    this.hintText = '',
    this.widget,
    this.iconData,
    this.controller,
    this.values,
    this.keyboardType = TextInputType.text,
    this.enabled = true,
  });
  final String title, hintText;

  final IconData? iconData;
  final Widget? widget;
  final TextEditingController? controller;
  final List<String>? values;
  final TextInputType? keyboardType;
  final bool? enabled;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: const TextStyle(color: Colors.white),
        ),
        const SizedBox(height: kDefaultPadding / 4),
        TextFormField(
          controller: controller,
          decoration: InputDecoration(
              hintText: hintText,
              hintStyle: TextStyle(
                  fontSize: 15,
                  color: Get.isDarkMode
                      ? Colors.white60
                      : Colors.black87.withOpacity(.7)),
              suffixIcon: iconData != null ? Icon(iconData) : widget),
          keyboardType: keyboardType,
        ),
      ],
    );
  }
}
