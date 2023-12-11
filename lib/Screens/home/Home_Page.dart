
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:my_portfolio_website/Resources/Colors/app_colors.dart';
import 'package:url_launcher/url_launcher.dart';




class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  // TODO Link Open Function
Future<void> _launchUrl(UrlLink) async {
  final Uri _url = Uri.parse(UrlLink);
  if (!await launchUrl(_url)) {
    throw Exception('Could not launch $_url');
  }
}
  
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height * 1;
    double width = MediaQuery.of(context).size.width * 1;
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Row(
        children: [
          Expanded(
            child: Row(
              children: [
                 Expanded(
                   child: Container(
                        // color:Colors.pink,
                        child:SingleChildScrollView(
                          
                          scrollDirection: Axis.horizontal,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                height: height*0.10,
                              ),
                              Row(
                                children: [
                                  SizedBox(width: width*0.08,),
                                  const Text("Hello, It's Me", style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold, color: Colors.white)),
                                ],
                              ),
                              Row(
                                children: [
                                   SizedBox(width: width*0.08,),
                                  const Text("Md Somad", style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold, color: Colors.white)),
                                ],
                              ),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  SizedBox(width: width*0.08,),
                                  const Text("And I'm an  ", style: TextStyle(fontSize: 35, fontWeight: FontWeight.w600, color: Colors.white)),
                                  Text("App Developer", style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold, color: cyan))
                                ],
                              ),
                            
                          Row(
                            children: [
                              SizedBox(width: width*0.08,),
                              SizedBox(
                                width: width * 0.2,
                                child: SingleChildScrollView(
                                  scrollDirection: Axis.horizontal,
                                  child: Row(
                                  // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  children: [
                                    IconButton(
                                      iconSize: 30,
                                      onPressed: (){
                                        _launchUrl("https://github.com/mdsomad");
                                    }, icon: FaIcon(FontAwesomeIcons.github, color: Colors.white)),
                                    IconButton(
                                    iconSize: 30,
                                    onPressed: (){
                                      _launchUrl('https://www.instagram.com/md_somad/');
                                  }, icon: SvgPicture.asset(
                                        width: 35,
                                        height: 35,
                                        fit:BoxFit.cover,
                                                  "assets/icons/instagram.svg"
                                      ),),
                                    IconButton(
                                      iconSize: 30,
                                      onPressed: (){
                                       _launchUrl('https://twitter.com/MdSomad1');
                                    }, icon: SvgPicture.asset(
                                        width: 35,
                                        height: 35,
                                        fit:BoxFit.cover,
                                                  "assets/icons/twitter.svg"
                                      )),
                                  
                                    IconButton(
                                      iconSize: 30,
                                      onPressed: (){
                                    
                                    }, icon: FaIcon(FontAwesomeIcons.linkedin, color: Colors.blueAccent)),
                                                          
                                    IconButton(
                                      iconSize: 30,
                                      onPressed: (){
                                       _launchUrl('https://play.google.com/store/apps/dev?id=6634717439171184150');
                                    }, icon: SvgPicture.asset(
                                        width: 28,
                                        height: 28,
                                        fit:BoxFit.cover,
                                                  "assets/images/google-play.svg"
                                      )),
                                    
                                  ],),
                                ),
                              ),
                            ],
                          ),
                            
                            
                                            Row(
                                            children: [
                          SizedBox(width: width*0.085,),
                          Padding(
                            padding: const EdgeInsets.only(top: 15),
                            child: Icon(Icons.call,color: cyan)
                          ),
                            const Padding(
                              padding: EdgeInsets.only(left: 15,top: 13),
                              child: Text("+91-8942998873", style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold, color: Colors.white),),
                            )
                                            ],
                                          ),
                                         SizedBox(
                                          height: height*0.02,
                                         ),
                                          Row(
                                            children: [
                          SizedBox(width: width*0.08,),
                             Padding(
                            padding: const EdgeInsets.only(left: 10),
                            child: Icon(Icons.mail,color: cyan)
                          ),
                            const Padding(
                              padding: EdgeInsets.only(left: 15),
                              child: Text("mdsomad@gmail.com", style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold, color: Colors.white),),
                            )
                                            ],
                                          ),
                          
                            
                            ],
                          ),
                        ),
                      ),
                 ),
                 Expanded(
                   child: Container(   
    
                    // color: Colors.yellow,  
                        child: Column(
                        children: [
                     SizedBox(height: height*0.1,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Container(
                          height: 250,
                          width: 250,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(125),
                            boxShadow: [
                              BoxShadow(color: cyan, offset: const Offset(0, 12), blurRadius: 10, spreadRadius: 0.2)
                            ]
                            ),
                            child: CircleAvatar(
                              backgroundColor: cyan,
                              backgroundImage: const AssetImage('assets/images/sanchita.jpg')),  
                        ),
                        SizedBox(width: width*0.1,)
                      ],
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        const Padding(
                          padding: EdgeInsets.only(top: 50),
                          child: SizedBox(width: 400,
                            child: Text("I'm a self learned programmer.\n I choose my career path as an App Developer.\n I've App development experience of over 1+ Years. And programming experience of 3 Years. I'm also a Game Designer and had an experience of over 3+ Years in Unreal Engine & Blender 3D.", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white, fontStyle: FontStyle.italic),)),
                        ),
                         SizedBox(width: width*0.04,)
                      ],
                    ),
                    
                                             ],
                                           ),
                      ),
                 )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

