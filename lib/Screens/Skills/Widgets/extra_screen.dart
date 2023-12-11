import 'package:flutter/material.dart';
import 'package:my_portfolio_website/Screens/Skills/Widgets/SkillsProgress_Widget.dart';
import 'package:my_portfolio_website/models/extra_data.dart';

class ExtraScreen extends StatelessWidget {
  const ExtraScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
             padding: const EdgeInsets.only(left: 80,top: 30),
      child: SingleChildScrollView(
        child: Wrap(
           spacing: 30,
           runSpacing: 30,
           alignment: WrapAlignment.start,
           crossAxisAlignment: WrapCrossAlignment.center,
          children: [
            
             for (var i = 0; i < ExtraDataList.length; i++)
             SkillsProgress(title:ExtraDataList[i].title,percentageProgress:ExtraDataList[i].percentageProgress,percentageNumber:ExtraDataList[i].percentageNumber,svgPath:ExtraDataList[i].logo),
      
            
          ],
        ),
      ),
            );
  }
}