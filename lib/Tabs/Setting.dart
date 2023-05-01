import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:islami/BottomSheetScreen.dart';
import 'package:islami/Provider/MyProvider.dart';
import 'package:islami/Provider/Mytheme.dart';
import 'package:islami/sheetBottomtheme.dart';
import 'package:islami/themeData/ThemeData.dart';
import 'package:provider/provider.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class  SettingTab extends StatelessWidget {
  const  SettingTab({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    var po=Provider.of<MyProvider>(context);
    var pot=Provider.of<Mytheme>(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: 40,),
       Padding(
         padding: const EdgeInsets.all(8.0),
         child: Text(AppLocalizations.of(context)!.language,textAlign: TextAlign.start,style: GoogleFonts.elMessiri(
           fontSize: 20,fontWeight: FontWeight.bold
         ),),
       ),
       InkWell(
         onTap: (){
           ShowBottmSheet(context);
         },
         child: Container(
           width: double.infinity,
           decoration: BoxDecoration(
             borderRadius: BorderRadius.circular(18),
             border: Border.all(color: Theme.of(context).primaryColor),
           ),
           child:Padding(
             padding: const EdgeInsets.all(9.0),
             child: Text(po.language=="ar"?AppLocalizations.of(context)!.arabic:AppLocalizations.of(context)!.english,style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
           ),),
       ),
        SizedBox(height: 40,),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(AppLocalizations.of(context)!.themeing,textAlign: TextAlign.start,style: GoogleFonts.elMessiri(
              fontSize: 20,fontWeight: FontWeight.bold
          ),),
        ),
        InkWell(
          onTap: ()
          {
            ShowBottmSheettheme(context);
          },
          child: Container(
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(18),
              border: Border.all(color: Theme.of(context).primaryColor),
            ),
            child:Padding(
              padding: const EdgeInsets.all(9.0),
              child: Text(pot.themeData==Themedata.light?AppLocalizations.of(context)!.light:AppLocalizations.of(context)!.dark,style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
            ),),
        ),
      ],
    );
  }

  ShowBottmSheet(BuildContext context) {
    showModalBottomSheet(context: context, builder: (context) {
      return SheetBottom();
    });
  }
  ShowBottmSheettheme(BuildContext context) {
    showModalBottomSheet(context: context, builder: (context) {
      return SheetBottomTheme();
    });
  }



}
