import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../services/theme_service.dart';
import '../../../constants.dart';
import '../../notification/notification_screen.dart';

AppBar buildAppBar(BuildContext context) {
  return AppBar(
    leading: IconButton(
      onPressed: () => ThemeServices().switchTheme(),
      icon: Icon(
        Get.isDarkMode
            ? CupertinoIcons.brightness_solid
            : CupertinoIcons.moon_fill,
      ),
    ),
    actions: [
      IconButton(
        onPressed: () {
          Get.to(const NotificationScreen(
            pyload:
                'Notification Title |Free Download Document UI Description SVG vector file in monocolor and multicolor type for Sketch and Figma from Document UI Description Vectors svg vector collection. |date',
          ));
        },
        icon: Icon(
          CupertinoIcons.bell,
          color: Theme.of(context).colorScheme.surface,
        ),
        style: IconButton.styleFrom(backgroundColor: kPrimaryColor),
      ),
      const SizedBox(width: kDefaultPadding / 4),
      CircleAvatar(
        child: Padding(
          padding: const EdgeInsets.all(8),
          child: Icon(CupertinoIcons.person,
              color: Theme.of(context).colorScheme.surface),
        ),
      ),
      const SizedBox(width: kDefaultPadding / 4),
    ],
  );
}
