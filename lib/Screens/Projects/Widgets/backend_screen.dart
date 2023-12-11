import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:my_portfolio_website/Resources/Colors/app_colors.dart';
import 'package:my_portfolio_website/Screens/Projects/Widgets/frontend_screen.dart';
import 'package:my_portfolio_website/models/Frontend_Projects_data.dart/backend_project_data.dart';
import 'package:url_launcher/url_launcher.dart';




class BackendProjectScreen extends StatefulWidget {
  const BackendProjectScreen({super.key});

  @override
  State<BackendProjectScreen> createState() => _BackendProjectScreenState();
}

class _BackendProjectScreenState extends State<BackendProjectScreen> {


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
      itemCount: BackendProjectsDataList.length,
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
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Padding(
                    padding: const EdgeInsets.only(left:30,top: 30),
                    child: Text("Name : ${BackendProjectsDataList[index].project_name}",style: TextStyle(fontSize: 30,color: Colors.white),),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left:30,top: 20),
                  child: Text("Using Framework : ${BackendProjectsDataList[index].frameworkName}",style: TextStyle(fontSize: 25,color: Colors.white),),
                ),
                ScrollConfiguration(
                     behavior: MyCustomScrollBehavior(),
                  child: SingleChildScrollView(
                     scrollDirection: Axis.horizontal,
                    child: Padding(
                      padding: const EdgeInsets.only(left:30,top: 30),
                      child: Row(
                        children: [
                          Text("Source Code Link:",style: TextStyle(fontSize: 25,color: Colors.white),),
                          SizedBox(width: 15,),
                          SelectableText(BackendProjectsDataList[index].sourceCodeLink,style: TextStyle(fontSize: 25,color: Colors.blueAccent),),
                        ],
                      ),
                    ),
                  ),
                ),
            
            
                
                
                
              ],
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
                                  BackendProjectsDataList[index].logo,
                      ),
                              ),
                    ),
                     Padding(
                       padding: const EdgeInsets.only(right: 43,bottom: 15),
                       child: ElevatedButton.icon(
                        style: ElevatedButton.styleFrom(backgroundColor: cyan),
                        onPressed: (){
                          _launchUrl(BackendProjectsDataList[index].sourceCodeLink);
                        }, icon: FaIcon(FontAwesomeIcons.github, color: Colors.black), label: Text("Check now",style: TextStyle(color: Colors.black),)),
                     ),

                  ],
                ),)
            
            
        ],
      );
    },);
  }
}





 // Positioned.fill(
          //   right: 100,
          //   child:  Column(
          //         mainAxisAlignment: MainAxisAlignment.center,
          //         crossAxisAlignment: CrossAxisAlignment.end,
          //         children: [
                    
          //           Padding(
          //             padding: const EdgeInsets.only(left: 15,right: 70),
          //             child: Container(
          //             height: 130,
          //             width: 130,
          //             //  color: Colors.yellow,
          //             padding: const EdgeInsets.only(left: 25,bottom: 20),
          //             child: SvgPicture.asset(
          //                         "assets/images/node-js.svg",
          //             ),
          //                     ),
          //           ),
          //            Padding(
          //              padding: const EdgeInsets.only(right: 15,bottom: 15),
          //              child: ElevatedButton.icon(
          //               style: ElevatedButton.styleFrom(backgroundColor: cyan),
          //               onPressed: (){
          //                 // _launchUrl('https://www.youtube.com/watch?v=tQK6sdG-hJA&t=28s');
          //                 // log("Click Now");
          //               }, icon: FaIcon(FontAwesomeIcons.github, color: Colors.black), label: Text("Check now",style: TextStyle(color: Colors.black),)),
          //            ),

          //         ],
          //       ),)