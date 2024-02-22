import 'package:flutter/material.dart';
import 'package:todo_app_getx/routes.dart';
import 'package:todo_app_getx/screens/notification/notification_screen.dart';
import 'themes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: theme(),
      initialRoute: NotificationScreen.routeName,
      routes: routes,
    );
  }

  
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        title: const Text('ToDo'),
      ),
    ));
  }
}
