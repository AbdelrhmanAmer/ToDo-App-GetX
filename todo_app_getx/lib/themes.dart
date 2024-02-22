import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'constants.dart';

ThemeData theme() {
  return ThemeData(
    colorScheme: ColorScheme.fromSeed(
      seedColor: Colors.black,
    ),
    useMaterial3: true,
    appBarTheme: buildAppBarTheme(),
  );
}

AppBarTheme buildAppBarTheme() {
  return const AppBarTheme(
    centerTitle: true,
    titleTextStyle: TextStyle(
      fontSize: 24,
      fontWeight: FontWeight.w500,
      color: kTextColor,
    ),
    backgroundColor: Colors.teal
  );
}
