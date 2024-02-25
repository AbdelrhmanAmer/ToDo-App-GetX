import 'package:flutter/material.dart';

import '../../../constants.dart';
import 'text_section.dart';

class Body extends StatelessWidget {
  const Body({super.key, required this.pyload});
  final String pyload;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Padding(
      padding: const EdgeInsets.symmetric(
          horizontal: kDefaultPadding, vertical: kDefaultPadding),
      child: Column(
        children: [
          Text('New Reminder',
              style: Theme.of(context).textTheme.headlineSmall),
          const SizedBox(height: kDefaultPadding),
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(colors: [
                  Theme.of(context).colorScheme.primary,
                  Theme.of(context).colorScheme.primary.withOpacity(.9),
                  Theme.of(context).colorScheme.primary.withOpacity(.8),
                ], begin: Alignment.centerLeft, end: Alignment.centerRight),
                borderRadius: BorderRadius.circular(30),
              ),
              width: double.infinity,
              child: Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: kDefaultPadding, vertical: kDefaultPadding),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    TextSection(
                      title: 'Title',
                      icon: 'assets/icons/title.svg',
                      description: pyload.split('|')[0],
                    ),
                    const SizedBox(height: kDefaultPadding),
                    TextSection(
                      title: 'Description',
                      icon: 'assets/icons/description.svg',
                      description: pyload.split('|')[1],
                      iconHeight: 20,
                    ),
                    const SizedBox(height: kDefaultPadding),
                    TextSection(
                      title: 'Date',
                      icon: 'assets/icons/date.svg',
                      description: pyload.split('|')[2],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    ));
  }
}

