import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:my_portfolio_website/Resources/Colors/app_colors.dart';
import 'package:my_portfolio_website/Screens/Projects/Widgets/frontend_screen.dart';
import 'package:my_portfolio_website/models/Frontend_Projects_data.dart/Live_app_data.dart';
import 'package:url_launcher/url_launcher.dart';




class LiveAppScreen extends StatefulWidget {
  const LiveAppScreen({super.key});

  @override
  State<LiveAppScreen> createState() => _LiveAppScreenState();
}

class _LiveAppScreenState extends State<LiveAppScreen> {
  // TODO Link Open Function
Future<void> _launchUrl(UrlLink) async {
  final Uri _url = Uri.parse(UrlLink);
  if (!await launchUrl(_url)) {
    throw Exception('Could not launch $_url');
  }
}
  
  
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: LiveAppsDataList.length,
      itemBuilder:(context, index) {
      return Stack(
        children: [
          Container(
            height: 250,
            width: double.infinity,
            margin: EdgeInsets.symmetric(horizontal: 70,vertical: 20),
            decoration: BoxDecoration(
            color: Color(0xff3C424E),
            borderRadius: BorderRadius.circular(30)

            ),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Padding(
                      padding: const EdgeInsets.only(left:30,top: 30),
                      child: Text("Name : ${LiveAppsDataList[index].app_name}",style: TextStyle(fontSize: 30,color: Colors.white),),
                    ),
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.vertical,
                    child: Padding(
                      padding: const EdgeInsets.only(left:30,top: 5),
                      child: Text(LiveAppsDataList[index].frameworkName,style: TextStyle(fontSize: 15,color: Colors.white),),
                    ),
                  ),
                  ScrollConfiguration(
                       behavior: MyCustomScrollBehavior(),
                    child: SingleChildScrollView(
                       scrollDirection: Axis.horizontal,
                      child: Padding(
                        padding: const EdgeInsets.only(left:30,top: 20),
                        child: Row(
                          children: [
                            Text("Google Play Store :",style: TextStyle(fontSize: 25,color: Colors.white),),
                            SizedBox(width: 15,),
                            SelectableText(LiveAppsDataList[index].play_store_Link,style: TextStyle(fontSize: 25,color: Colors.blueAccent),),
                          ],
                        ),
                      ),
                    ),
                  ),
              
              
                  
                  
                  
                ],
              ),
            ),
            
            ),



            
 Positioned.fill(
            right: 100,
            child:  Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    
                    Padding(
                      padding: const EdgeInsets.only(left: 15,right: 70),
                      child: Container(
                      height: 130,
                      width: 130,
                      //  color: Colors.yellow,
                      padding: const EdgeInsets.only(left: 25,bottom: 20),
                      child: SvgPicture.asset(
                                  LiveAppsDataList[index].logo,
                      ),
                              ),
                    ),
                     Padding(
                       padding: const EdgeInsets.only(right: 43,bottom: 15),
                       child: ElevatedButton.icon(
                        style: ElevatedButton.styleFrom(backgroundColor: cyan),
                        onPressed: (){
                          _launchUrl(LiveAppsDataList[index].play_store_Link);
                        }, icon: SvgPicture.asset(height: 18,'assets/images/google-play.svg'), label: Text("Install now",style: TextStyle(color: Colors.black),)),
                     ),

                  ],
                ),)
            
            
        ],
      );
    },);
  }
}