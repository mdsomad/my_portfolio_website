import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:my_portfolio_website/Resources/Colors/app_colors.dart';

class SkillsProgressMobile extends StatelessWidget {
  const SkillsProgressMobile({
    super.key, required this.title, required this.percentageProgress, required this.svgPath, required this.percentageNumber,
  });


  final String title;
  final double percentageProgress;
  final String percentageNumber;
  final String svgPath;

  @override
  Widget build(BuildContext context) {
      double width = MediaQuery.of(context).size.width * 1;
    return Container(
                    // height: 90,
                    width: 160,
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(topLeft: Radius.circular(20),bottomRight: Radius.circular(20)),
                    color: Color(0xff1F1E1E),
                    ),
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                            children: [
                              SizedBox(width: width*0.03,),
                              Container(
                                height: 30,
                                width: 30,
                                // color: Colors.yellow,
                                padding: const EdgeInsets.only(left: 0),
                                child: SvgPicture.asset(
                          // "assets/images/flutter.svg",
                                  svgPath
                                ),
                              ),
                              const SizedBox(width: 10,),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(bottom: 7),
                                    child: Text(title,style: const TextStyle(color: Colors.white,fontSize: 15,fontWeight: FontWeight.w500),),
                                  ),
                                  SizedBox(
                                    width:width *0.2 ,
                                    child: ProgressIndicator(percentageProgress,context)),
                    
                                  
                                    
                                ],
                              ),
                    
                              Padding(
                                padding: const EdgeInsets.only(top: 27,left:8),
                                child: Text(
                                  percentageNumber,style: const TextStyle(color: Colors.white),),
                              )
                            ],
                          ),
                    ),
                    
                    
                  );
  }
}






Widget ProgressIndicator(progress,BuildContext context){
   return  SizedBox(
            width: MediaQuery.of(context).size.width,
            height: 11,
            // color: Colors.yellow,
            child: ClipRRect(
              borderRadius: const BorderRadius.all(Radius.circular(10)),
              child: LinearProgressIndicator(
                value:progress,
                valueColor: AlwaysStoppedAnimation<Color>(cyan),
                backgroundColor: const Color(0xffD6D6D6),
                borderRadius: const BorderRadius.only(bottomRight: Radius.circular(30),topRight: Radius.circular(30)),
              ),
            ),
          );
}
