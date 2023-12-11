import 'package:flutter/material.dart';
import 'package:my_portfolio_website/Screens/Skills/Widgets/SkillsProgress_Widget.dart';
import 'package:my_portfolio_website/models/frameworks_data.dart';

class FrameworksScreen extends StatelessWidget {
  const FrameworksScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Container(
             padding: const EdgeInsets.only(left: 80,top: 30),
      child: SingleChildScrollView(
        child: Wrap(
           spacing: 30,
           runSpacing: 30,
           alignment: WrapAlignment.start,
           crossAxisAlignment: WrapCrossAlignment.center,
          children: [
            
             for (var i = 0; i < FrameworksDataList.length; i++)
             SkillsProgress(title: FrameworksDataList[i].title,percentageProgress:FrameworksDataList[i].percentageProgress,percentageNumber:  FrameworksDataList[i].percentageNumber,svgPath:FrameworksDataList[i].logo),
      
            
          ],
        ),
      ),
            );
  }
}