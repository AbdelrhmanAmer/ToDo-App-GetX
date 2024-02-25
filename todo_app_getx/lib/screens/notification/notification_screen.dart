import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'components/body.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({super.key, required this.pyload});
  final String pyload;

  @override
  Widget build(BuildContext context) {

    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        title: Text(pyload.split('|')[0], style: Theme.of(context).textTheme.headlineSmall,),
        leading: IconButton(
            onPressed: () => Get.back(), icon: const Icon(Icons.arrow_back)),
      ),
      body: Body(pyload: pyload),
    ));
  }
}

