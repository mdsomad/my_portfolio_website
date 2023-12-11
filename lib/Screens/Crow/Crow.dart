import 'package:flutter/material.dart';
import 'package:my_portfolio_website/Resources/Colors/app_colors.dart';
import 'package:my_portfolio_website/Screens/Projects/Widgets/frontend_screen.dart';
import 'package:url_launcher/url_launcher.dart';




class CrowScreen extends StatefulWidget {
  const CrowScreen({super.key});

  @override
  State<CrowScreen> createState() => _CrowScreenState();
}

class _CrowScreenState extends State<CrowScreen> {


// TODO Link Open Function
Future<void> _launchUrl(UrlLink) async {
  final Uri _url = Uri.parse(UrlLink);
  if (!await launchUrl(_url)) {
    throw Exception('Could not launch $_url');
  }
}
  
  
  @override
   Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemCount: 15,
        itemBuilder:(context, index) {
        return Stack(
          children: [
            Container(
              height: 200,
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
                        child: Text("Name : Artaza",style: TextStyle(fontSize: 30,color: Colors.white),),
                      ),
                    ),
                    SingleChildScrollView(
                      scrollDirection: Axis.vertical,
                      child: Padding(
                        padding: const EdgeInsets.only(left:30,top: 15),
                        child: Text("Role: Frontend Developer",style: TextStyle(fontSize: 20,color: Colors.white),),
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
                              Text("Website Link :",style: TextStyle(fontSize: 25,color: Colors.white),),
                              SizedBox(width: 15,),
                              SelectableText("https://artaza.in",style: TextStyle(fontSize: 25,color: Colors.blueAccent),),
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
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 20),
                      child: Container(
                        height: 40,
                        width: 170,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: cyan
                          ),
                          onPressed: () {
                                   _launchUrl('https://artaza.in');
                        }, child: Text("Visit Website",style: TextStyle(fontWeight: FontWeight.w500),)),
                      ),
                    ),
                  ],
                ))
              
              
          ],
        );
      },),
    );
  }
}