import 'dart:ffi';

import 'package:flutter/material.dart';

class Mytheme extends ChangeNotifier
{
  ThemeMode themeData=ThemeMode.light;

  Void? Changetheme(ThemeMode data)
  {
    themeData=data;
    notifyListeners();
  }
}