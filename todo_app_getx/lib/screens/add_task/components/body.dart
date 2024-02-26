import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:todo_app_getx/constants.dart';
import 'package:todo_app_getx/controllers/task_controller.dart';

class Body extends StatefulWidget {
  const Body({super.key});

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    return const SafeArea(
        child: Padding(
      padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            InputField(
              title: 'Title',
              hintText: 'Enter title here',
            ),
          ],
        ),
      ),
    ));
  }
}

class InputField extends StatelessWidget {
  const InputField({
    super.key,
    required this.title,
    required this.hintText,
    this.suffixIcon,
    this.iconData,
    this.controller,
    this.values,
  });
  final String title, hintText;
  final String? suffixIcon;
  final IconData? iconData;
  final TextEditingController? controller;
  final List<String>? values;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(title),
        const SizedBox(height: kDefaultPadding / 4),
        TextFormField(
          decoration: InputDecoration(
            hintText: hintText,
            hintStyle: const TextStyle(fontSize: 16),
            suffixIcon: suffixIcon != null
                ? Padding(
                    padding: const EdgeInsets.all(kDefaultPadding/2),
                    child: SvgPicture.asset(
                      suffixIcon!,
                      colorFilter: ColorFilter.mode(
                          Get.theme.colorScheme.onSurface, BlendMode.srcIn),
                    ),
                  )
                : iconData != null
                    ? Icon(iconData)
                    : null,
          ),
        ),
      ],
    );
  }
}
