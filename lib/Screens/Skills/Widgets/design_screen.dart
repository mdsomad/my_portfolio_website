import 'package:flutter/material.dart';
import 'package:my_portfolio_website/Screens/Skills/Widgets/SkillsProgress_Widget.dart';
import 'package:my_portfolio_website/models/design_data.dart';

class DesignScreen extends StatelessWidget {
  const DesignScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return   Container(
             padding: const EdgeInsets.only(left: 80,top: 30),
      child: SingleChildScrollView(
        child: Wrap(
           spacing: 30,
           runSpacing: 30,
           alignment: WrapAlignment.start,
           crossAxisAlignment: WrapCrossAlignment.center,
          children: [
            
             for (var i = 0; i < DesignDataList.length; i++)
             SkillsProgress(title:DesignDataList[i].title,percentageProgress:DesignDataList[i].percentageProgress,percentageNumber:DesignDataList[i].percentageNumber,svgPath:DesignDataList[i].logo),
      
            
          ],
        ),
      ),
            );
  }
}