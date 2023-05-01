
import 'package:flutter/material.dart';
import 'package:islami/Provider/MyProvider.dart';
import 'package:provider/provider.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';


class SheetBottom extends StatelessWidget {
  static const String routename="SheetBottom";

  @override
  Widget build(BuildContext context) {
    var p=Provider.of<MyProvider>(context);
    return Container(
      child: Column(children: [
        SizedBox(height: 20,),
        InkWell(
          onTap: ()
          {

            if(p.language=="ar")
              {
                return;
              }
            p.changeLanguage("ar");
            Navigator.pop(context);
          },
          child: Container(
            padding: EdgeInsets.all(10),
            child: Row(
              children: [

                Text(AppLocalizations.of(context)!.arabic,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15,color: p.language=="ar"?Theme.of(context).primaryColor:Colors.black),),
                Spacer(),
                Icon(Icons.done_outline_rounded,color: p.language=="ar"?Theme.of(context).primaryColor:Colors.black ,),
              ],
            ),
          ),
        ),
        SizedBox(height: 20,),
        InkWell(
          onTap: (){

            if(p.language=="en")
            {
              return;
            }
            p.changeLanguage("en");
            Navigator.pop(context);
          },
          child: Container(
            padding: EdgeInsets.all(10),
            child: Row(
              children: [

                Text(AppLocalizations.of(context)!.english,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15,color:  p.language!="ar"?Theme.of(context).primaryColor:Colors.black),),
                Spacer(),
                Icon(Icons.done_outline_rounded,color:  p.language!="ar"?Theme.of(context).primaryColor:Colors.black,),
              ],
            ),
          ),
        ),
      ],),

    );
  }
}
