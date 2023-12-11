import 'package:clipboard/clipboard.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:my_portfolio_website/Resources/Colors/app_colors.dart';
import 'package:my_portfolio_website/models/Frontend_Projects_data.dart/Live_app_data.dart';
import 'package:url_launcher/url_launcher.dart';

class HomeMobileScreen extends StatefulWidget {
  const HomeMobileScreen({super.key});

  @override
  State<HomeMobileScreen> createState() => _HomeMobileScreenState();
}

class _HomeMobileScreenState extends State<HomeMobileScreen> {

// TODO Link Open Function
Future<void> _launchUrl(UrlLink) async {
  final Uri _url = Uri.parse(UrlLink);
  if (!await launchUrl(_url)) {
    throw Exception('Could not launch $_url');
  }
}


Uri dialnumber = Uri(scheme: 'tel',path:'8942998873');
Uri emailUri  = Uri(scheme: 'mailto',path:'mdsomad@gmail.com');

callnumber(BuildContext context)async{
  await launchUrl(dialnumber);
}
emailLaunchUri(BuildContext context)async{
  await launchUrl(emailUri);
}



  
  @override
  Widget build(BuildContext context) {
     double height = MediaQuery.of(context).size.height * 1;
    double width = MediaQuery.of(context).size.width * 1;
    return Expanded(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [

            SizedBox(height:height*0.04,),
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
                SizedBox(height:height*0.04,),
          const Text("Hello, It's Me", style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold, color: Colors.white)),
            Text("Md Somad", style: TextStyle(fontSize: 45, fontWeight: FontWeight.bold, color:cyan)),
           const Text("And I'm an  ", style: TextStyle(fontSize: 30, fontWeight: FontWeight.w600, color: Colors.white)),
          Text("App Developer", style: TextStyle(fontSize: 37, fontWeight: FontWeight.bold, color: cyan)),
           Padding(
             padding: const EdgeInsets.symmetric(horizontal: 25,vertical: 10),
             child: Text(
             textAlign: TextAlign.center,
              "I'm a self learned programmer.\n I choose my career path as an App Developer.\n I've App development experience of over 1+ Years. And programming experience", 
             style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.white, fontStyle: FontStyle.italic),),
           ),
           SizedBox(height:height*0.01,),
           Row(
            children: [
               SizedBox(width:width*0.04,),
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
                SizedBox(width:width*0.04,),
                Text("Live Apps",style: TextStyle(color: Colors.white,fontSize: 20),)
            ],
           ),
           Padding(
             padding: const EdgeInsets.all(8.0),
             child: Divider(color: Colors.white,height: 5,),
           ),
          for (var i = 0; i < LiveAppsDataList.length; i++)
           ListTile(
            leading: SvgPicture.asset(
               width: 30,
               height: 30,
              LiveAppsDataList[i].logo),
              title: Text("Name : ${LiveAppsDataList[i].app_name}",style: TextStyle(color: Colors.white),),
              trailing: Container(
                height: 35,
                width: 100,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: cyan
                  ),
                  onPressed: (){
                     _launchUrl(LiveAppsDataList[i].play_store_Link);
                  }, child: Text("Install Now",style: TextStyle(fontSize: 10,fontWeight: FontWeight.bold),)),
              ),
           ),
              SizedBox(height:height*0.01,),
              Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
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
                                      
                
              ],),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: ListTile(leading: InkWell(
                   onTap: () {
                     callnumber(context);
                   },
                  child: Icon(Icons.call,color: Colors.greenAccent,)),
                   title: SelectableText("91+ 8942998873",style: TextStyle(color: Colors.white),),
                     trailing: IconButton(onPressed: (){
                    FlutterClipboard.copy("8942998873").then(( value ) =>

                              Fluttertoast.showToast(
                              msg: "Copied",
                              toastLength: Toast.LENGTH_SHORT,
                              gravity: ToastGravity.CENTER,
                              timeInSecForIosWeb: 1,
                              backgroundColor: Colors.red,
                              textColor: Colors.white,
                              fontSize: 16.0,
                              webShowClose: true
                              ));
                   }, icon: Icon(Icons.copy,color: Colors.white,)),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: ListTile(leading: InkWell(
                  onTap: () {
                    emailLaunchUri(context);
                  },
                  child: Icon(Icons.mail,color: Colors.blueAccent,)),
                   title: SelectableText("mdsomad@gmail.com",style: TextStyle(color: Colors.white),
                   ),
                   trailing: IconButton(onPressed: (){
                    FlutterClipboard.copy("mdsomad@gmai.com").then(( value ) =>
                              Fluttertoast.showToast(
                              msg: "copied",
                              toastLength: Toast.LENGTH_SHORT,
                              gravity: ToastGravity.CENTER,
                              timeInSecForIosWeb: 1,
                              backgroundColor: Colors.red,
                              textColor: Colors.white,
                              fontSize: 16.0,
                              webShowClose: true
                              ));
                   }, icon: Icon(Icons.copy,color: Colors.white,)),
                ),
              ),
              SizedBox(height:height*0.03,),
          ],
        ),
      ),
    );
  }
}