import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class MyProvider extends ChangeNotifier
{

  MyProvider()
  {
    getLanhuageAtInit();
  }
      String language="en";
     Future<void> changeLanguage(String lan)
      async {
        language=lan;
        notifyListeners();
        SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
        sharedPreferences.setBool("isEng", language=="en");
      }



      getLanhuageAtInit() async{
        SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
        bool? isEng =
        sharedPreferences.getBool("isEng");
        if (isEng != null && isEng) {
          language = "en";
        } else {
          language = "ar";
        }
        notifyListeners();
      }


}