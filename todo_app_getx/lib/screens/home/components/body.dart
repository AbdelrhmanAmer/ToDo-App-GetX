import 'package:flutter/material.dart';

import '../../../constants.dart';
import 'custom_appbar.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const CustomAppBar(),
          const SizedBox(height: kDefaultPadding),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
            child: Text('Today\'s task',
                style: Theme.of(context).textTheme.headlineSmall),
          ),
          Row(
            children: [
              Text('')
            ],
          )
        ],
      ),
    );
  }
}
