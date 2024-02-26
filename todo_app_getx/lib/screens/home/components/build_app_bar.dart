import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:todo_app_getx/services/theme_service.dart';

import '../../notification/notification_screen.dart';

AppBar buildAppBar(BuildContext context) {
    return AppBar(
      title:
          Text('Home Screen', style: Theme.of(context).textTheme.headlineSmall),
      leading: IconButton(
          onPressed: () => ThemeServices().switchTheme(),
          icon: const Icon(Icons.sunny)),
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
                Theme.of(context).colorScheme.onSurface, BlendMode.srcIn),
          ),
        )
      ],
    );
  }