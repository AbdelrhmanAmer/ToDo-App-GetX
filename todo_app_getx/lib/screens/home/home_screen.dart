import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import '../../services/theme_service.dart';
import '../notification/notification_screen.dart';
import 'components/body.dart';

class HomeScreen extends StatelessWidget {
  static String routeName = '/home';
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: buildAppBar(context), body: const Body());
  }

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
            colorFilter: const ColorFilter.mode(Colors.black, BlendMode.srcIn),
          ),
        )
      ],
    );
  }
}
