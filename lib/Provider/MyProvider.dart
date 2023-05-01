import 'package:flutter/material.dart';

class MyProvider extends ChangeNotifier
{
      String language="en";
     void changeLanguage(String lan)
      {
        language=lan;
        notifyListeners();
      }

}