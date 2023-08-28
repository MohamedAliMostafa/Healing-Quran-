import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:islami/Api/apiManager.dart';
import 'package:islami/widget/radioitem.dart';
import 'package:provider/provider.dart';

import '../Model/RadioModel.dart';
import '../Provider/Mytheme.dart';

class  RadioTab extends StatefulWidget {
  const  RadioTab({Key? key}) : super(key: key);

  @override
  State<RadioTab> createState() => _RadioTabState();
}

class _RadioTabState extends State<RadioTab> {
  late final audioPlayer;
  @override
  void initState() {
    audioPlayer=AudioPlayer();
  }
  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    audioPlayer.dispose();
  }

  @override
  Widget build(BuildContext context) {
  //  var pt=Provider.of<Mytheme>(context);
    return Column(
      children: [
        SizedBox(height: MediaQuery.of(context).size.height*0.06,),
        Image.asset("assets/images/ImageRadio.png"),
        FutureBuilder<RadioModel>(builder: (context, snapshot) {
          if(snapshot.connectionState==ConnectionState.waiting)
            {
              return CircularProgressIndicator();
            }
          else if( snapshot.hasError)
            {
              return Text(snapshot.error.toString());
            }
          var R=snapshot.data!.radios;
          return Expanded(
            child: ListView.builder(
             physics: PageScrollPhysics(),
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
              return RadioItem(R[index],audioPlayer);
            },itemCount: R!.length,),
          );

        },future: ApiManager.getRadio(),),
        Container(
          color: Colors.cyan,
          height: 20,
        )


      ],
    );
  }
}
