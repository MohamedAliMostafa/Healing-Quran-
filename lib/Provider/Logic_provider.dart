
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Logic extends ChangeNotifier
{
  List<String>su=[];
  void LoadFiles(int index) async
  {
    String sura=await rootBundle.loadString("assets/files/${index+1}.txt");
    List<String>Lines=sura.split("\n");
    su=Lines;
   notifyListeners();
  }
}