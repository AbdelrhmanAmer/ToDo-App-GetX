import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:todo_app_getx/services/notification_services.dart';

import '../../notification/notification_screen.dart';
import '../../../constants.dart';
import '../../../services/theme_service.dart';

class PageTitle extends StatefulWidget {
  const PageTitle({
    super.key,
  });

  @override
  State<PageTitle> createState() => _PageTitleState();
}

class _PageTitleState extends State<PageTitle> {
  late NotifyHelper notifyHelper;

  @override
  void initState() {
    super.initState();
    notifyHelper = NotifyHelper();
    notifyHelper.requestAndroidPermissions();
    notifyHelper.initializeNotification();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding/ 1.5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          GetBuilder<ThemeServices>(
            builder: (themeController) {
              return IconButton(
                onPressed: () {
                  themeController.switchTheme();
                  notifyHelper.displayNotification(title: 'Theme Switched', body: 'Notification Body');
                  // notifyHelper.scheduleNotification();
                },
                icon: Icon(
                  themeController.theme == ThemeMode.dark
                      ? CupertinoIcons.brightness_solid
                      : CupertinoIcons.moon_fill,
                ),
              );
            },
          ),
          const Text('Schedule'),
          IconButton(
              onPressed: () {
                Get.to(const NotificationScreen(
                    pyload:
                        'Notification Title |Free Download Document UI Description SVG vector file in monocolor and multicolor type for Sketch and Figma from Document UI Description Vectors svg vector collection. |date'));
              },
              icon: Stack(
                children: [
                  const Icon(CupertinoIcons.bell),
                  Positioned(
                    right: 2,
                    child: Container(
                      height: 8,
                      width: 8,
                      decoration: const BoxDecoration(
                          color: kPrimaryColor, shape: BoxShape.circle),
                    ),
                  )
                ],
              ))
        ],
      ),
    );
  }
}
