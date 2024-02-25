import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:flutter/material.dart';

class ThemeServices{
  final GetStorage _box = GetStorage();
  final _key = 'isDarkMode';

  void _saveThemeToBox(bool isDarkMode){
    _box.write(_key, isDarkMode);
  }
  bool _getThemeFromBox(){
    return _box.read<bool>(_key) ?? false;
  }

  ThemeMode get theme => _getThemeFromBox() ? ThemeMode.dark : ThemeMode.light;
  void switchTheme(){
    Get.changeThemeMode(_getThemeFromBox() ? ThemeMode.light : ThemeMode.dark);
    _saveThemeToBox(!_getThemeFromBox());
  }
}