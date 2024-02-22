import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:todo_app_getx/screens/notification/notification_screen.dart';

import 'components/body.dart';

class HomeScreen extends StatelessWidget {
  static String routeName = '/home';
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context),
      body: const Body()
    );
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      title: const Text('Home Screen'),
      actions: [
        IconButton(
          onPressed: () {
            Navigator.pushNamed(
              context,
              NotificationScreen.routeName,
              arguments: NotificationArguments(
                  pyload: 'Notification Title |description |date'),
            );
          },
          icon: SvgPicture.asset(
            'assets/icons/Bell.svg',
            colorFilter:
                const ColorFilter.mode(Colors.black, BlendMode.srcIn),
          ),
        )
      ],
    );
  }
}
