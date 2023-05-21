import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:islami/Content/AhadethConten.dart';
import 'package:islami/Model/AhadethModel.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class HadethTab extends StatefulWidget {
  @override
  State<HadethTab> createState() => _HadethTabState();
}

class _HadethTabState extends State<HadethTab> {
List<AhadethModel>listAha=[];


  @override
  Widget build(BuildContext context) {

    if(listAha.isEmpty)
    {
      LoadFiles();
    }
    return Column(
      children: [
        const Image(image: AssetImage("assets/images/imageAd.png")),
        Divider(height: 2,thickness: 2,color: Theme.of(context).primaryColor,),
        Text(AppLocalizations.of(context)!.ahadeth,style: Theme.of(context).textTheme.bodyMedium),
        Divider(height: 2,thickness: 2,color: Theme.of(context).primaryColor,),
        Expanded(
          child: ListView.separated(
            separatorBuilder: (context,index)=>Divider(height: 2,thickness: 2,endIndent: 30,indent: 30,color: Theme.of(context).primaryColor.withOpacity(0.5),),
            itemBuilder: (context,index){
              return InkWell(
                onTap: (){
                  Navigator.pushNamed(context, AhadethContent.routename,arguments: listAha[index]);
                },
                child: Center(
    child: Padding(
    padding: const EdgeInsets.all(8.0),
    child: Text(listAha[index].title,style:Theme.of(context).textTheme.bodySmall,),
    ),
    ),
              );

            },itemCount:listAha.length ),
        )
      ],


    );
  }

  void LoadFiles() async
  {
    try {
      String sura = await rootBundle.loadString("assets/files/ahadeth .txt");
      List<String>Adeth_content = sura.split("#");
      for(int i=0;i<Adeth_content.length;i++)
        {
          List<String>lines=Adeth_content[i].trim().split("\n");
          String title=lines[0];
          lines.removeAt(0);
          List<String>content=lines;
          AhadethModel AM=AhadethModel(title, content);
          listAha.add(AM);
        }
     setState(() {

     });
    }
    catch(error)
    {
      print(error);
    }
  }
}
