import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:islami/Provider/MyProvider.dart';
import 'package:islami/Provider/Mytheme.dart';
import 'package:islami/Tabs/HadethTab.dart';
import 'package:islami/Tabs/QuranTab.dart';
import 'package:islami/Tabs/RadioTab.dart';
import 'package:islami/Tabs/Setting.dart';
import 'package:islami/Tabs/sebhaTab.dart';
import 'package:islami/styleBtnNavg.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:islami/themeData/ThemeData.dart';
import 'package:provider/provider.dart';


class Quran extends StatefulWidget {
 static const String routename="quran";

  @override
  State<Quran> createState() => _QuranState();
}

class _QuranState extends State<Quran> {
int indx=3;
List<Widget>tabs=[RadioTab(),SebaTab(),HadethTab(),QuranTab(),SettingTab()];

  @override
  Widget build(BuildContext context) {
    var pt= Provider.of<Mytheme>(context);
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage(pt.themeData==ThemeMode.light?"assets/images/bg3.png":"assets/images/bg.png"),fit: BoxFit.fill),
      ),
      child:Scaffold(
          appBar: AppBar(
            title: Text(AppLocalizations.of(context)!.apptitle,style: Theme.of(context).textTheme.bodyLarge,),
          ),
        bottomNavigationBar: CurvedNavigationBar(
          height: 50,
          buttonBackgroundColor: Colors.white,
          color: Theme.of(context).primaryColor,
          backgroundColor: Colors.white,
          animationCurve: Curves.easeInOutCubicEmphasized,
          index: indx,
          onTap: (val){
            setState(() {
              indx=val;

            });
          },

          items: [
            Stylebtn("assets/images/ImageRadio.png", AppLocalizations.of(context)!.radio),
            Stylebtn("assets/images/sebha.png", AppLocalizations.of(context)!.sebha),
            Stylebtn("assets/images/quran-quran-svgrepo-com.png", AppLocalizations.of(context)!.ahadeth),
            Stylebtn("assets/images/quran.png", AppLocalizations.of(context)!.quran),
            Stylebtn("assets/images/R.png", AppLocalizations.of(context)!.setting),
          ],
        ),
        body: tabs[indx],

    ));
  }
}
