import 'package:flutter/material.dart';
import 'package:my_portfolio_website/Screens/Skills/Widgets/SkillsProgress_Widget.dart';
import 'package:my_portfolio_website/models/Languages_data.dart';

class LanguagesScreen extends StatelessWidget {
  const LanguagesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Container(
      // color: Colors.pink,
      padding: const EdgeInsets.only(left: 80,top: 30),
      child: SingleChildScrollView(
        child: Wrap(
           spacing: 30,
           runSpacing: 30,
           alignment: WrapAlignment.start,
           crossAxisAlignment: WrapCrossAlignment.center,
          children: [
            
             for (var i = 0; i < LanguagesDataList.length; i++)
             SkillsProgress(title: LanguagesDataList[i].title,percentageProgress:  LanguagesDataList[i].percentageProgress,percentageNumber:  LanguagesDataList[i].percentageNumber,svgPath:LanguagesDataList[i].logo),
        
  
          
          
          
            
          ],
        ),
      ),
    );
  }
}

