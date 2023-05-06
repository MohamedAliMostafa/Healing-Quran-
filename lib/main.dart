
import 'package:flutter/material.dart';
import 'package:islami/BottomSheetScreen.dart';
import 'package:islami/Content/AhadethConten.dart';
import 'package:islami/Content/Sura_content.dart';
import 'package:islami/Provider/MyProvider.dart';
import 'package:islami/Provider/Mytheme.dart';
import 'package:islami/sheetBottomtheme.dart';
import 'package:islami/quranScreen.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:islami/themeData/ThemeData.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MultiProvider(providers: [ChangeNotifierProvider<MyProvider>(
  create:(context)=>MyProvider()),
  ChangeNotifierProvider<Mytheme>(
  create:(context)=>Mytheme()),
  ],
  child: MyApp()));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var prov=Provider.of<MyProvider>(context);
    var p=Provider.of<Mytheme>(context);
  return MaterialApp(
    debugShowCheckedModeBanner: false,
    title: 'Localizations Sample App',
    localizationsDelegates: [
      AppLocalizations.delegate,
      GlobalMaterialLocalizations.delegate,
      GlobalWidgetsLocalizations.delegate,
      GlobalCupertinoLocalizations.delegate,
    ],

    supportedLocales: [
      Locale('en'), // English
      Locale('ar'), // arabic
    ],
    locale: Locale(prov.language),
    theme: Themedata.light,
    darkTheme:Themedata.dark ,
    themeMode: p.themeData,
    initialRoute: Quran.routename,
    routes: {
      Quran.routename:(context)=>Quran(),
      Sura_content.routeName:(context)=>Sura_content(),
      AhadethContent.routename:(context)=>AhadethContent(),
      SheetBottom.routename:(context)=>SheetBottom(),
      SheetBottomTheme.routename:(context)=>SheetBottomTheme()

    },

  );
  }
}

