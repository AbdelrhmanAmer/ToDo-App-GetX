import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class ThemeServices extends GetxController {
  final GetStorage _box = GetStorage();
  final _key = 'isDarkMode';

  Future<void> _saveThemeToBox(bool isDarkMode) async {
    await _box.write(_key, isDarkMode);
  }

  bool _getThemeFromBox() {
    return _box.read<bool>(_key) ?? false;
  }

  ThemeMode get theme => _getThemeFromBox() ? ThemeMode.dark : ThemeMode.light;

  void switchTheme() {
    Get.changeThemeMode(_getThemeFromBox() ? ThemeMode.light : ThemeMode.dark);
    _saveThemeToBox(!_getThemeFromBox());
    update(); // This triggers a rebuild of the widgets using this controller.
  }
}