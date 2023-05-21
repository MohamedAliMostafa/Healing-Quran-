import 'package:flutter/material.dart';

class Stylebtn extends StatefulWidget {
  String pathImage;
  String txt;
  Stylebtn(this.pathImage,this.txt);

  @override
  State<Stylebtn> createState() => _StylebtnState();
}

class _StylebtnState extends State<Stylebtn> {
  @override
  Widget build(BuildContext context) {
    return  Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ImageIcon( AssetImage(widget.pathImage)),
        Text(widget.txt,style: Theme.of(context).textTheme.labelSmall,)

      ],
    ) ;
  }
}
