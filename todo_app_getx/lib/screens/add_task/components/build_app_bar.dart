import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';
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
    actions: [
      CircleAvatar(
        child: Padding(
          padding: const EdgeInsets.all(8),
          child: SvgPicture.asset(
            'assets/icons/person.svg',
            colorFilter: ColorFilter.mode(
                Get.theme.colorScheme.onSurface, BlendMode.srcIn),
          ),
        ),
      ),
      const SizedBox(width: kDefaultPadding / 4),
    ],
  );
}
