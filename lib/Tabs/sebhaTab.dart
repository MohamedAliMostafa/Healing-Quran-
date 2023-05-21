import 'package:flutter/material.dart';
import 'package:islami/Provider/Mytheme.dart';
import 'package:islami/themeData/ThemeData.dart';
import 'package:provider/provider.dart';

class  SebaTab extends StatefulWidget {
  @override
  State<SebaTab> createState() => _SebaTabState();
}

class _SebaTabState extends State<SebaTab> {
  int numSeb=1;
  int Index=0;
  int lastindex=0;
  List<String>Sebha =["سُبْحَانَ اللَّهِ بَارِئِ النَّسَمِ","سُبْحَانَ اللَّهِ الْمُصَوِّرِ","سُبْحَانَ اللَّهِ خَالِقِ الْأَزْوَاجِ كُلِّهَ","سُبْحَانَ اللَّهِ رَبِّ الْعَالَمِينَ","سُبْحَانَ اللَّهِ وَبِحَمْدِهِ","سُبْحَانَ اللَّهِ وَالْحَمْدُ لِلَّهِ","سُبْحَانَ اللَّهِ وَالْحَمْدُ لِلَّهِ وَلا إِلـٰه إِلاّ اللّٰهُ واللّٰهُ أكبر","أستغفر الله","لا إلـٰه إلاّ اللّٰهُ واللّٰهُ أكبر ولا حول ولا قوة إلا باللّٰه","لا حول ولا قوة إلا باللّٰه"];
  @override
  Widget build(BuildContext context) {
    var pt=Provider.of<Mytheme>(context);
    return Column(
      children: [
        InkWell(
          splashColor: Theme.of(context).primaryColor,
            onTap: (){
              setState(() {
                if(numSeb==30)
                {
                  numSeb=1;

                  lastindex=Sebha.length-1;
                  if(Index==lastindex)
                    {
                      Index=0;
                    }
                  else
                    {
                      Index++;
                    }


                }
                else
                {
                  numSeb++;
                }
              });

            },
            child: Image(image: AssetImage(pt.themeData==ThemeMode.light?"assets/images/imageSebha.png":"assets/images/Group 8.png"),height: 250,)),
        const Divider(),
        Text("عدد التسبيحات",style: Theme.of(context).textTheme.bodySmall,),
        const SizedBox(height:15 ,),
        Container(
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
            color:pt.themeData==ThemeMode.light? Color(0XFFB7935F).withOpacity(0.6):Color(0XFF141A2E).withOpacity(0.9),
            borderRadius: BorderRadius.circular(18),
          ),
          child:Text("$numSeb",style: Theme.of(context).textTheme.bodyLarge,),
        ),
        const SizedBox(height:15 ,),
        Container(
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: Theme.of(context).primaryColor,
            borderRadius: BorderRadius.circular(30),
          ),
          child:Text("${Sebha[Index]}",style:TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.white),),
        ),
      ],
    );
  }
}
