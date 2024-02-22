import 'package:flutter/widgets.dart';
import 'package:todo_app_getx/screens/notification/notification_screen.dart';
import 'package:flutter/material.dart';


Map<String, WidgetBuilder> routes = {
  NotificationScreen.routeName: (context) => const NotificationScreen(),
};