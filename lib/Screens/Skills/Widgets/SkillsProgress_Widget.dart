import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:my_portfolio_website/Resources/Colors/app_colors.dart';

class SkillsProgress extends StatelessWidget {
  const SkillsProgress({
    super.key, required this.title, required this.percentageProgress, required this.svgPath, required this.percentageNumber,
  });


  final String title;
  final double percentageProgress;
  final String percentageNumber;
  final String svgPath;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 110,
      width: 250,
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.only(topLeft: Radius.circular(30),bottomRight: Radius.circular(30)),
        color: Color(0xff1F1E1E),
      ),
      child: Row(
        children: [
          Container(
            height: 70,
            width: 70,
            // color: Colors.yellow,
            padding: const EdgeInsets.only(left: 25),
            child: SvgPicture.asset(
                        svgPath,
            ),
          ),
          const SizedBox(width: 15,),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 7),
                child: Text(title,style: const TextStyle(color: Colors.white,fontSize: 15,fontWeight: FontWeight.w500),),
              ),
              SizedBox(
                width: 100,
                child: ProgressIndicator(percentageProgress,context)),

              
                
            ],
          ),

          Padding(
            padding: const EdgeInsets.only(top: 30,left: 10),
            child: Text(
              percentageNumber,style: const TextStyle(color: Colors.white),),
          )
        ],
      ),

      
      
    );
  }
}




Widget ProgressIndicator(progress,BuildContext context){
   return  SizedBox(
            width: MediaQuery.of(context).size.width,
            height: 13,
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