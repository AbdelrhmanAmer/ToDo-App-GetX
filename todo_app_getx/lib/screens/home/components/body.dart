import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../../../constants.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
        child: Column(
          children: [
            RichText(
                text: TextSpan(
              children: [
                TextSpan(
                  text: '${DateFormat.yMMMMd().format(DateTime.now())}\n',
                  style: Theme.of(context)
                      .textTheme
                      .bodyLarge!
                      .copyWith(fontWeight: FontWeight.bold),
                ),
                TextSpan(
                  text: 'Today',
                  style: Theme.of(context)
                      .textTheme
                      .headlineSmall!
                      .copyWith(fontWeight: FontWeight.bold),
                ),
              ],
            ))
          ],
        ),
      ),
    );
  }
}
