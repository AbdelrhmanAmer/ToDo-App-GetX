import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:todo_app_getx/services/theme_service.dart';

import '../../../constants.dart';
import '../../notification/notification_screen.dart';

AppBar buildAppBar(BuildContext context) {
  return AppBar(
    title:
        Text('Home Screen', style: Theme.of(context).textTheme.headlineSmall),
        centerTitle: false,
    leading: IconButton(
        onPressed: () => ThemeServices().switchTheme(),
        icon: Icon(Get.isDarkMode ? Icons.wb_sunny_rounded : Icons.nightlight_round_outlined),
        ),
    actions: [
      IconButton(
        onPressed: () {
          Get.to(const NotificationScreen(
            pyload:
                'Notification Title |Free Download Document UI Description SVG vector file in monocolor and multicolor type for Sketch and Figma from Document UI Description Vectors svg vector collection. |date',
          ));
        },
        icon: SvgPicture.asset(
          'assets/icons/Bell.svg',
          colorFilter: ColorFilter.mode(
              Theme.of(context).colorScheme.surface, BlendMode.srcIn),
        ),
        style: IconButton.styleFrom(backgroundColor: kPrimaryColor),
      ),
      const SizedBox(width: kDefaultPadding / 4),
      CircleAvatar(
        child: Padding(
          padding: const EdgeInsets.all(8),
          child: SvgPicture.asset(
            'assets/icons/person.svg',
            colorFilter: ColorFilter.mode(
                Get.theme.colorScheme.surface, BlendMode.srcIn),
          ),
        ),
      ),
      const SizedBox(width: kDefaultPadding / 4),
    ],
  );
}
