import 'package:flutter/material.dart';
import 'package:my_portfolio_website/Resources/Colors/app_colors.dart';
import 'package:my_portfolio_website/models/Frontend_Projects_data.dart/Frontend_data.dart';

class FrontendProjectsMobileScreen extends StatefulWidget {
  const FrontendProjectsMobileScreen({super.key});

  @override
  State<FrontendProjectsMobileScreen> createState() => Ffronten_projePts_mobiMScreenState();
}

class Ffronten_projePts_mobiMScreenState extends State<FrontendProjectsMobileScreen> {
  @override
  Widget build(BuildContext context) {
    
    double height = MediaQuery.of(context).size.height * 1;
    double width = MediaQuery.of(context).size.width * 1;
    return ListView.builder(
      itemCount: 1,
      itemBuilder: (context, index) {
       return Container(
        // height:height*0.1 ,
        margin: EdgeInsets.symmetric(horizontal: 12,vertical: 15),
        width: double.infinity,
         decoration: BoxDecoration(
           color: Color(0xff3C424E),
           borderRadius: BorderRadius.circular(10),
         ),
         child: ListView(
          shrinkWrap: true,
          children: [
            Container(
              height: 160,
              margin: EdgeInsets.all(10),
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.pink,
                 borderRadius: BorderRadius.circular(10),
              ),
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: FrontendProjectsDataList[0].images.length,
                itemBuilder: (context, index) {
                 return Container(
                  height: 160,
                  width: 80,
                  margin: EdgeInsets.symmetric(horizontal: 2,vertical: 5),
                  child: Image.network(FrontendProjectsDataList[0].images[index],fit: BoxFit.fitHeight,),
                  // color: Colors.yellow,
                 );
              },),
            ),

            Padding(
              padding: const EdgeInsets.only(left: 18,top: 12),
              child: Text("Name: Hello world",style: TextStyle(color: Colors.white,fontSize: 15,fontWeight: FontWeight.w500)),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 18,top: 5,bottom: 15),
              child: Text("Source Code Link:",style: TextStyle(color: Colors.white,fontSize: 15,fontWeight: FontWeight.w500),),
            ),

          ],
         ),
       );
    },);
  }
}