import 'package:flutter/material.dart';
import 'package:islami/Model/SuraModel.dart';
import 'package:islami/Content/Sura_content.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class QuranTab extends StatelessWidget {

List<String>Sura_name=["الفاتحه","البقرة","آل عمران","النساء","المائدة","الأنعام","الأعراف","الأنفال","التوبة","يونس","هود"
,"يوسف","الرعد","إبراهيم","الحجر","النحل","الإسراء","الكهف","مريم","طه","الأنبياء","الحج","المؤمنون"
,"النّور","الفرقان","الشعراء","النّمل","القصص","العنكبوت","الرّوم","لقمان","السجدة","الأحزاب","سبأ"
,"فاطر","يس","الصافات","ص","الزمر","غافر","فصّلت","الشورى","الزخرف","الدّخان","الجاثية","الأحقاف"
,"محمد","الفتح","الحجرات","ق","الذاريات","الطور","النجم","القمر","الرحمن","الواقعة","الحديد","المجادلة"
,"الحشر","الممتحنة","الصف","الجمعة","المنافقون","التغابن","الطلاق","التحريم","الملك","القلم","الحاقة","المعارج"
,"نوح","الجن","المزّمّل","المدّثر","القيامة","الإنسان","المرسلات","النبأ","النازعات","عبس","التكوير","الإنفطار"
,"المطفّفين","الإنشقاق","البروج","الطارق","الأعلى","الغاشية","الفجر","البلد","الشمس","الليل","الضحى","الشرح"
,"التين","العلق","القدر","البينة","الزلزلة","العاديات","القارعة","التكاثر","العصر",
"الهمزة","الفيل","قريش","الماعون","الكوثر","الكافرون","النصر","المسد","الإخلاص","الفلق","الناس"];
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
      const Image(image: AssetImage("assets/images/Screenshot (1).png")),
        Divider(height: 2,thickness: 2,color: Theme.of(context).primaryColor,),
        Text(AppLocalizations.of(context)!.sura_name,style: Theme.of(context).textTheme.bodyMedium,),
        Divider(height: 2,thickness: 2,color: Theme.of(context).primaryColor,),
        Expanded(
          child: ListView.separated(
            separatorBuilder: (context,index)=>Divider(height: 2,thickness: 2,endIndent: 30,indent: 30,color: Theme.of(context).primaryColor.withOpacity(0.5),),
            itemBuilder: (context,index){
            return InkWell(
              onTap: (){
                Navigator.pushNamed(context, Sura_content.routeName,arguments: SuraModel(Sura_name[index], index));

              },
              child: Center(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(Sura_name[index],style:Theme.of(context).textTheme.bodySmall),
                ),
              ),
            );

          },itemCount:Sura_name.length ,),
        )
      ],
    );
  }
}
