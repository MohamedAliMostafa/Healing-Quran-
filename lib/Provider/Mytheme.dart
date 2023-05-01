import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:islami/themeData/ThemeData.dart';

class Mytheme extends ChangeNotifier
{
  ThemeData themeData=Themedata.light;

  Void? Changetheme(ThemeData data)
  {
    themeData=data;
    notifyListeners();
  }
}