import 'package:flutter/material.dart';
import 'package:my_portfolio_website/Resources/Colors/app_colors.dart';
import 'package:my_portfolio_website/Screens/Projects/Widgets/frontend_screen.dart';
import 'package:my_portfolio_website/Screens/mobile%20screen/skills_mobile_view/Widgets/skills_progress_mobile.dart';
import 'package:my_portfolio_website/models/Languages_data.dart';

class LanguagesMobileScreen extends StatefulWidget {
  const LanguagesMobileScreen({super.key});

  @override
  State<LanguagesMobileScreen> createState() => _LanguagesMobileScreenState();
}

class _LanguagesMobileScreenState extends State<LanguagesMobileScreen> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width * 1;
    return Container(
            margin: EdgeInsets.symmetric(horizontal: 10,vertical: 15),
            height: 800,
             child: ScrollConfiguration(
              behavior: MyCustomScrollBehavior(),
               child: GridView.builder(
                physics:BouncingScrollPhysics(),
                gridDelegate:SliverGridDelegateWithFixedCrossAxisCount(
                
                mainAxisExtent: 85,
                crossAxisCount:2,
                crossAxisSpacing: 10,
                mainAxisSpacing: 15
                ), 
               itemCount: LanguagesDataList.length,
               itemBuilder:(context, index)=> GridTile(child:  InkWell(
                onTap: () {
                  // Navigator.push(context, MaterialPageRoute(builder:(context) => FullScreen(imgUrl:  trendingWallList[index].imgSrc),));
                },
                 child: SkillsProgressMobile(title:LanguagesDataList[index].title ,percentageNumber: LanguagesDataList[index].percentageNumber,percentageProgress: LanguagesDataList[index].percentageProgress,svgPath: LanguagesDataList[index].logo,)
               ) )
                         ),
             ),
           );
   
    
    
   
  }
}

