import 'package:flutter/material.dart';
import 'package:my_portfolio_website/Screens/Skills/Widgets/SkillsProgress_Widget.dart';
import 'package:my_portfolio_website/models/backend_data.dart';

class BackendScreen extends StatelessWidget {
  const BackendScreen({super.key});

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
            
             for (var i = 0; i < BackendDataList.length; i++)
             SkillsProgress(title: BackendDataList[i].title,percentageProgress:BackendDataList[i].percentageProgress,percentageNumber:  BackendDataList[i].percentageNumber,svgPath:BackendDataList[i].logo),
      
            
          ],
        ),
      ),
            );
  }
}