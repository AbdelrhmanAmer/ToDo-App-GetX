import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../constants.dart';

AppBar buildAppBar(BuildContext context) {
  return AppBar(

    leading: IconButton(
      onPressed: () => Get.back(),
      icon: const Icon(
        Icons.arrow_back,
        color: kPrimaryColor,
      ),
      
    ),
    elevation: 0,
    actions: const [
      CircleAvatar(
        child: Padding(
          padding: EdgeInsets.all(8),
          child: Icon(CupertinoIcons.person)
        ),
      ),
      SizedBox(width: kDefaultPadding / 4),
    ],
  );
}
