import 'package:flutter/material.dart';
import 'package:get/get.dart';

class NotificationScreen extends StatelessWidget {
  static String routeName = '/notification';
  const NotificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final NotificationArguments arguments =
        ModalRoute.of(context)?.settings.arguments as NotificationArguments;

    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        title: Text(arguments.pyload.split('|')[0]),
        leading: IconButton(
            onPressed: () => Get.back(), icon: const Icon(Icons.arrow_back)),
      ),
      body: Container(),
    ));
  }
}

class NotificationArguments {
  final String pyload;

  NotificationArguments({required this.pyload});
}
