import 'package:flutter/material.dart';

import 'constants.dart';

ThemeData theme() {
  return ThemeData(
    colorScheme: ColorScheme.fromSeed(
      seedColor: Colors.teal,
    ),
    textTheme: buildTextTheme(),
    useMaterial3: true,
    appBarTheme: buildAppBarTheme(),
  );
}

TextTheme buildTextTheme() {
  return const TextTheme().copyWith(
    titleLarge: const TextStyle(color: kTextColor, fontWeight: FontWeight.w500),
    headlineSmall: const TextStyle(fontWeight: FontWeight.w900),
    bodyLarge: const TextStyle(fontSize: 22, fontWeight: FontWeight.w500),
    bodyMedium: const TextStyle(fontSize: 14, fontWeight: FontWeight.w300),
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
    backgroundColor: Colors.teal,
  );
}
