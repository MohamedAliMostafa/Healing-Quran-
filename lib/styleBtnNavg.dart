import 'package:flutter/material.dart';

class Stylebtn extends StatelessWidget {
  String pathImage;
  String txt;
  Stylebtn(this.pathImage,this.txt);

  @override
  Widget build(BuildContext context) {
    return  Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ImageIcon( AssetImage(pathImage)),
        Text(txt,style: Theme.of(context).textTheme.labelSmall,)

      ],
    ) ;
  }
}
