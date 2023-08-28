import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:islami/Model/RadioModel.dart';
import 'package:provider/provider.dart';

import '../Provider/Mytheme.dart';

class RadioItem extends StatelessWidget {

  Radios radios;
  final audPlayer;

RadioItem(this.radios,this.audPlayer);

@override
  Widget build(BuildContext context) {
    var pt=Provider.of<Mytheme>(context);
    return Column(
        children: [ SizedBox(height: MediaQuery.of(context).size.height*0.05,),
          Text(radios.name??"",style:TextStyle(color:pt.themeData==ThemeMode.light?Colors.black:Colors.white,fontSize: 15)),
          SizedBox(height: MediaQuery.of(context).size.height*0.08),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              IconButton(icon:Icon(Icons.play_arrow,color:Theme.of(context).primaryColor,size: 50,),onPressed: () async {
               await audPlayer.play(UrlSource(radios.radioUrl??""));
              },),
              IconButton(icon:Icon(Icons.pause,color:Theme.of(context).primaryColor,size: 40,),onPressed: () async {
                await audPlayer.pause();
              },)

            ],
          )

        ],

    );
  }
}
