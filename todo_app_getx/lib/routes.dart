import 'package:flutter/material.dart';

import 'screens/home/home_screen.dart';
import 'screens/notification/notification_screen.dart';

Map<String, WidgetBuilder> routes = {
  HomeScreen.routeName: (context) => const HomeScreen(),
  NotificationScreen.routeName: (context) => const NotificationScreen(),
};