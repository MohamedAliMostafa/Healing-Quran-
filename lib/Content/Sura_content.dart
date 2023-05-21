import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami/Model/SuraModel.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:islami/Provider/Logic_provider.dart';
import 'package:islami/Provider/Mytheme.dart';
import 'package:provider/provider.dart';

import '../themeData/ThemeData.dart';

class Sura_content extends StatefulWidget {
  static const String routeName = "Sura";

  @override
  State<Sura_content> createState() => _Sura_contentState();
}

class _Sura_contentState extends State<Sura_content> {
  @override
  Widget build(BuildContext context) {
    var pt = Provider.of<Mytheme>(context);

    var args = ModalRoute.of(context)?.settings.arguments as SuraModel;

    return ChangeNotifierProvider(
      create: (context) => Logic()..LoadFiles(args.indx),
      builder: (context, child) {
        var p_logic = Provider.of<Logic>(context);
        return Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(pt.themeData == ThemeMode.light
                      ? "assets/images/bg3.png"
                      : "assets/images/bg.png"),
                  fit: BoxFit.fill),
            ),
            child: Scaffold(
              appBar: AppBar(
                title: Text(
                  AppLocalizations.of(context)!.apptitle,
                  style: Theme.of(context).textTheme.bodyLarge,
                ),
              ),
              body: Column(
                children: [
                  const SizedBox(
                    height: 40,
                  ),
                  Text(
                    args.SuraName,
                    style: Theme.of(context).textTheme.bodyLarge,
                  ),
                  const Divider(
                    height: 2,
                    thickness: 2,
                    indent: 100,
                    endIndent: 100,
                  ),
                  Expanded(
                    child: Card(
                      shape: OutlineInputBorder(borderSide: BorderSide( color:pt.themeData == ThemeMode.light
                          ? Color(0xff141A2E)
                          : Colors.white,)),
                      margin:
                          const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
                      color: pt.themeData == ThemeMode.light
                          ? Colors.white
                          : Color(0xff141A2E),
                      elevation: 7,
                      shadowColor: Theme.of(context).primaryColor,
                      child: ListView.separated(
                        separatorBuilder: (context, index) {
                          return const SizedBox(height: 8,);
                        },
                        itemBuilder: (context, index) {
                         return Center(
                            child: Directionality(
                                textDirection: TextDirection.rtl,
                                child: Text(p_logic.su[index],
                                    style: Theme.of(context)
                                        .textTheme
                                        .labelMedium)),
                          );
                        },
                        itemCount: p_logic.su.length,
                      ),
                    ),
                  )
                ],
              ),
            ));
      },
    );
  }
}
