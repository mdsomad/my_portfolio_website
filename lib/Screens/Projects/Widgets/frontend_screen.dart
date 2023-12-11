import 'dart:developer';

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:my_portfolio_website/Resources/Colors/app_colors.dart';
import 'package:my_portfolio_website/models/Frontend_Projects_data.dart/Frontend_data.dart';
import 'package:url_launcher/url_launcher.dart';




class FrontendScreen extends StatefulWidget {
  const FrontendScreen({super.key});

  @override
  State<FrontendScreen> createState() => _FrontendScreenState();
}

class _FrontendScreenState extends State<FrontendScreen> {

// TODO Link Open Function
Future<void> _launchUrl(UrlLink) async {
  final Uri _url = Uri.parse(UrlLink);
  if (!await launchUrl(_url)) {
    throw Exception('Could not launch $_url');
  }
}
  
  
  @override
  Widget build(BuildContext context) {
     double width = MediaQuery.of(context).size.width * 1;
    return Container(
      // color:Colors.pink,
      child: Padding(
        padding: const EdgeInsets.only(left: 50,right: 50),
        child: ListView.builder(
          itemCount: FrontendProjectsDataList.length,
          itemBuilder: (context, index) {
             return Container(
              margin: EdgeInsets.only(bottom: 50,top: 10),
              height: 620,
              width: double.infinity,
              decoration: BoxDecoration(
               color: Colors.black54,
                borderRadius: BorderRadius.circular(30)
              ),
              child: Row(
                children: [
                  Expanded(
                    flex: 2,
                    child: Container(
                      // color: Colors.pink,
                      padding: EdgeInsets.only(left:20),
                      child: ScrollConfiguration(
                        behavior: MyCustomScrollBehavior(),
                        child: SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            children: [

                               for (int i = 0; i <FrontendProjectsDataList[index].images.length;i++)
                               
                              Container(
                                height: 500,
                                width: 250,
                                margin: EdgeInsets.all(20),
                                // decoration: BoxDecoration(
                                //  image: DecorationImage(
                                //   fit: BoxFit.cover,
                                //   image: AssetImage(""),scale: 50),
                                // // color: Colors.red,
                                // ),
                                //  child: SvgPicture.asset("assets/images/Screenshot_16902.svg",fit: BoxFit.cover,),
                                 child: Image.network(FrontendProjectsDataList[index].images[i],fit: BoxFit.cover,),
                              ),
                             
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      margin: EdgeInsets.symmetric(vertical: 30,horizontal: 50),
                      decoration: BoxDecoration(
                      color: lightBlack,
                       borderRadius: BorderRadius.circular(20)
                      ),
                      child: ScrollConfiguration(
                         behavior: MyCustomScrollBehavior(),
                        child: SingleChildScrollView(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              SizedBox(height: 50,),
                              ScrollConfiguration(
                                 behavior: MyCustomScrollBehavior(),
                                child: SingleChildScrollView(
                                  scrollDirection: Axis.horizontal,
                                  child: Row(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(FrontendProjectsDataList[index].app_name,style: TextStyle(color: Colors.white,fontSize: 30,fontWeight: FontWeight.bold),),
                                       SizedBox(width: 50),
                                      ElevatedButton.icon(
                                        style: ElevatedButton.styleFrom(backgroundColor: cyan),
                                        onPressed: (){
                                          _launchUrl(FrontendProjectsDataList[index].sourceCodeLink);
                                          log("Click Now");
                                        }, icon: FaIcon(FontAwesomeIcons.github, color: Colors.black), label: Text("Check now",style: TextStyle(color: Colors.black),))
                                    ],
                                  ),
                                ),
                              ),
                             const SizedBox(height: 20,),
                              Visibility(
                                visible: FrontendProjectsDataList[index].isYouTube,
                                child: ScrollConfiguration(
                                   behavior: MyCustomScrollBehavior(),
                                  child: SingleChildScrollView(
                                    scrollDirection: Axis.horizontal,
                                    child: Row(
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Text("Demo Video",style: TextStyle(color: Colors.white,fontSize: 30,fontWeight: FontWeight.w500),),
                                         SizedBox(width: 50),
                                        ElevatedButton.icon(
                                          style: ElevatedButton.styleFrom(backgroundColor: cyan),
                                          onPressed: (){
                                            _launchUrl('https://www.youtube.com/watch?v=tQK6sdG-hJA');
                                            log("Click Now");
                                          }, icon: FaIcon(FontAwesomeIcons.youtube, color: Colors.red), label: Text("Watch now",style: TextStyle(color: Colors.black),))
                                      ],
                                    ),
                                  ),
                                ),
                                replacement: SizedBox(),
                              ),
                            const  SizedBox(height: 30,),
                              ScrollConfiguration(
                                 behavior: MyCustomScrollBehavior(),
                                child: SingleChildScrollView(
                                  scrollDirection: Axis.horizontal,
                                  child: Row(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(left: 10),
                                        child: Text("Source Code Link:",style: TextStyle(color: Colors.white,fontSize: 18,fontWeight: FontWeight.w500),),
                                      ),
                                      SizedBox(width: 10,),
                                      SelectableText(FrontendProjectsDataList[index].sourceCodeLink,style: TextStyle(color: Colors.blueAccent,fontSize:20,fontWeight: FontWeight.w100),),
                                    ],
                                  ),
                                ),
                              ),
                              SizedBox(height: 40,),
                              Text(FrontendProjectsDataList[index].frameworkName,style: TextStyle(color: Colors.white,fontSize: 30,fontWeight: FontWeight.bold),),
                                   SizedBox(height: 40,),
                               SvgPicture.asset(
                                width: 130,
                                          FrontendProjectsDataList[index].logo,
                               ),
                                    SizedBox(height: 30,),
                        
                                  //  Padding(
                                  //    padding: const EdgeInsets.symmetric(horizontal: 100),
                                  //    child: SizedBox(
                                  //     width: MediaQuery.of(context).size.width,
                                  //     child: FittedBox(
                                  //       fit: BoxFit.contain,
                                  //       child: Text(
                                  //         "Socal Media App",
                                  //         textAlign: TextAlign.justify,
                                  //         style: TextStyle(
                                  //             color: Colors.black,
                                  //             fontWeight: FontWeight.w600,
                                  //             fontStyle: FontStyle.normal),
                                  //       ),
                                  //     ),
                                  //            ),
                                  //  ),
                                  
                                
                        
                        
                                   
                                   
                                   
                                   
                                   
                            ]
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ),
             );
        },),
      )
    );
  }
}



class MyCustomScrollBehavior extends MaterialScrollBehavior {
  @override
  Set<PointerDeviceKind> get dragDevices => {
        PointerDeviceKind.touch,
        PointerDeviceKind.mouse,
        PointerDeviceKind.stylus,
        PointerDeviceKind.unknown,
      };
}