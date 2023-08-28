import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:islami/Model/RadioModel.dart';

class ApiManager
{
  static Future<RadioModel>getRadio()
  async {
Uri url=Uri.https("api.mp3quran.net","/radios/radio_arabic.json");
var res=await http.get(url);
var r=jsonDecode(utf8.decode(res.bodyBytes));
RadioModel radioModel=RadioModel.fromJson(r);
return radioModel;
  }
}