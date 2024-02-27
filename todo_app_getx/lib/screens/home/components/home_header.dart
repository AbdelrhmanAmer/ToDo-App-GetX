import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../constants.dart';
import '../../../services/theme_service.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(
            onPressed: () {
              ThemeServices().switchTheme();
            },
            icon: Icon(
              Get.isDarkMode
                  ? CupertinoIcons.moon_fill
                  : CupertinoIcons.sun_max,
            ),
          ),
          const Text('Schedule'),
          IconButton(
              onPressed: () {},
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
