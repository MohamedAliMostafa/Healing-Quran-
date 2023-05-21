import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../Provider/Mytheme.dart';

class  RadioTab extends StatelessWidget {
  const  RadioTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var pt=Provider.of<Mytheme>(context);
    return Column(
      children: [
        SizedBox(height: MediaQuery.of(context).size.height*0.06,),
        Image.asset("assets/images/ImageRadio.png"),
        SizedBox(height: MediaQuery.of(context).size.height*0.05,),
        Text("إذاعة القران الكريم",style:TextStyle(color:pt.themeData==ThemeMode.light?Colors.black:Colors.white,)),
        SizedBox(height: MediaQuery.of(context).size.height*0.08),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Icon(Icons.skip_previous,color:Theme.of(context).primaryColor,size: 50,),
            Icon(Icons.play_arrow,color:Theme.of(context).primaryColor,size: 80,),
            Icon(Icons.skip_next,color:Theme.of(context).primaryColor,size: 50,)

          ],
        )

      ],
    );
  }
}
