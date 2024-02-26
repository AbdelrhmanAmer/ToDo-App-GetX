import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import '../../../constants.dart';

class InputField extends StatelessWidget {
  const InputField({
    super.key,
    required this.title,
    this.hintText = '',
    this.suffixIcon,
    this.widget,
    this.iconData,
    this.controller,
    this.values,
    this.keyboardType = TextInputType.text,
    this.enabled = true,
  });
  final String title, hintText;
  final String? suffixIcon;
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
            hintStyle:
                const TextStyle(fontSize: 15, color: Colors.grey),
            suffixIcon: suffixIcon != null
                ? Padding(
                    padding: const EdgeInsets.all(kDefaultPadding / 2),
                    child: SvgPicture.asset(
                      suffixIcon!,
                      colorFilter: ColorFilter.mode(
                          Get.theme.colorScheme.onSurface,
                          BlendMode.srcIn),
                    ),
                  )
                : iconData != null
                    ? Icon(iconData)
                    : widget,
          ),
          
          keyboardType: keyboardType,
        ),
      ],
    );
  }
}
