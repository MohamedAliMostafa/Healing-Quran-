import 'package:flutter/material.dart';
import 'package:islami/Model/AhadethModel.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:islami/Provider/Mytheme.dart';
import 'package:provider/provider.dart';

import '../themeData/ThemeData.dart';

class  AhadethContent extends StatefulWidget {
  static const String routename="ahad";

  @override
  State<AhadethContent> createState() => _AhadethContentState();
}

class _AhadethContentState extends State<AhadethContent> {
  @override
  Widget build(BuildContext context) {
    var pt=Provider.of<Mytheme>(context);
    var arg=ModalRoute.of(context)?.settings.arguments as AhadethModel;
    String con=arg.content.join("");
    return Container(
        decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage(pt.themeData==ThemeMode.light?"assets/images/bg3.png":"assets/images/bg.png"),fit: BoxFit.fill),
        ),
        child:Scaffold(
          appBar: AppBar(
            title: Text(AppLocalizations.of(context)!.apptitle,style: Theme.of(context).textTheme.bodyLarge,),
          ),
          body: SingleChildScrollView(
            child: Column(
              children: [
                const SizedBox(height: 40,),
                Text(arg.title,style: Theme.of(context).textTheme.bodyLarge,),
                const Divider(height: 2,thickness: 2,indent: 100,endIndent: 100,),
                Card(
                  margin: EdgeInsets.symmetric(horizontal: 14,vertical: 16),
                  elevation: 12,
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(18),
                    side: BorderSide(color: Theme.of(context).primaryColor)

                  ),
                  child:Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(con,textDirection: TextDirection.rtl,style:  TextStyle(fontSize:15,fontWeight: FontWeight.bold,color: Colors.black)
                    ),
                  ),
                ),

              ],),
          ),

        ));
  }
}
