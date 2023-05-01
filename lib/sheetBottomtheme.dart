
import 'package:flutter/material.dart';
import 'package:islami/Provider/MyProvider.dart';
import 'package:islami/Provider/Mytheme.dart';
import 'package:islami/themeData/ThemeData.dart';
import 'package:provider/provider.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';


class SheetBottomTheme extends StatelessWidget {
  static const String routename="SheetBoom";

  @override
  Widget build(BuildContext context) {
    var p=Provider.of<MyProvider>(context);
    var pt=Provider.of<Mytheme>(context);
    return Container(
      child: Column(children: [
        SizedBox(height: 20,),
        InkWell(
          onTap: ()
          {
pt.Changetheme(Themedata.Dark);
Navigator.pop(context);
          },
          child: Container(
            padding: EdgeInsets.all(10),
            child: Row(
              children: [

                Text(AppLocalizations.of(context)!.dark,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15,color: pt.themeData==Themedata.Dark?Theme.of(context).primaryColor:Colors.black54),),
                Spacer(),
                Icon(Icons.done_outline_rounded,color: pt.themeData==Themedata.Dark?Theme.of(context).primaryColor:Colors.black54 ,),
              ],
            ),
          ),
        ),
        SizedBox(height: 20,),
        InkWell(
          onTap: (){
            pt.Changetheme(Themedata.light);
            Navigator.pop(context);
          },
          child: Container(
            padding: EdgeInsets.all(10),
            child: Row(
              children: [

                Text(AppLocalizations.of(context)!.light,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15,color:  pt.themeData==Themedata.light?Theme.of(context).primaryColor:Colors.black),),
                Spacer(),
                Icon(Icons.done_outline_rounded,color:  pt.themeData==Themedata.light?Theme.of(context).primaryColor:Colors.black,),
              ],
            ),
          ),
        ),
      ],),

    );
  }
}
