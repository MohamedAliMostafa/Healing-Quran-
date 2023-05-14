import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Mytheme extends ChangeNotifier
{
  Mytheme()
  {
    getThemeAtInit();
  }

  ThemeMode themeData=ThemeMode.light;

  Future<Void?> Changetheme(ThemeMode data)
  async {
    themeData=data;
    notifyListeners();
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    sharedPreferences.setBool("is_dark", themeData == ThemeMode.dark);
  }
  getThemeAtInit() async{
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    bool? isDarkTheme =
    sharedPreferences.getBool("is_dark");
    if (isDarkTheme != null && isDarkTheme) {
      themeData = ThemeMode.dark;
    } else {
      themeData = ThemeMode.light;
    }
    notifyListeners();
  }


}