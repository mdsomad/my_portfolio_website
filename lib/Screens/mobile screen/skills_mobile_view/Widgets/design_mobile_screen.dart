import 'package:flutter/material.dart';
import 'package:my_portfolio_website/Screens/Projects/Widgets/frontend_screen.dart';
import 'package:my_portfolio_website/Screens/mobile%20screen/skills_mobile_view/Widgets/skills_progress_mobile.dart';
import 'package:my_portfolio_website/models/design_data.dart';

class DesingMobileScreen extends StatefulWidget {
  const DesingMobileScreen({super.key});

  @override
  State<DesingMobileScreen> createState() => DesingMobileScreenState();
}

class DesingMobileScreenState extends State<DesingMobileScreen> {
  @override
  Widget build(BuildContext context) {
    // double width = MediaQuery.of(context).size.width * 1;
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
               itemCount: DesignDataList.length,
               itemBuilder:(context, index)=> GridTile(child:  InkWell(
                onTap: () {
                  // Navigator.push(context, MaterialPageRoute(builder:(context) => FullScreen(imgUrl:  trendingWallList[index].imgSrc),));
                },
                 child: SkillsProgressMobile(title:DesignDataList[index].title ,percentageNumber: DesignDataList[index].percentageNumber,percentageProgress: DesignDataList[index].percentageProgress,svgPath: DesignDataList[index].logo,)
               ) )
                         ),
             ),
           );
   
    
    
   
  }
}
