import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:my_portfolio_website/Provider/main_screen_provider.dart';
import 'package:my_portfolio_website/Resources/Colors/app_colors.dart';
import 'package:my_portfolio_website/Resources/Components/Header.dart';
import 'package:my_portfolio_website/Screens/Crow/Crow.dart';
import 'package:my_portfolio_website/Screens/Projects/Projects_Screen.dart';
import 'package:my_portfolio_website/Screens/Skills/Skills_Screen.dart';
import 'package:my_portfolio_website/Screens/home/Home_Page.dart';
import 'package:my_portfolio_website/Screens/mobile%20screen/home_mobile_view/Widgets/SideMenuBar.dart';
import 'package:my_portfolio_website/Screens/mobile%20screen/home_mobile_view/home_mobile_screen.dart';
import 'package:my_portfolio_website/Screens/mobile%20screen/projects_mobile_screen/projects_mobile_screen.dart';
import 'package:my_portfolio_website/Screens/mobile%20screen/skills_mobile_view/skills_mobile_screen.dart';
import 'package:provider/provider.dart';
import 'package:responsive_builder/responsive_builder.dart';




class MainSreen extends StatefulWidget {
  const MainSreen({super.key});

  @override
  State<MainSreen> createState() => _MainSreenState();
}

class _MainSreenState extends State<MainSreen> {



  static final List<Widget> _widgetOptions = <Widget>[         //* <-- First Create ( List ) <-- iska kaam hai Pages ko display karta hai
    const HomePage(),
    const SkillScreen(),
    const ProjectScreen(),
    const CrowScreen()
  ];
  static final List<Widget> _widgetMobileOptions = <Widget>[         //* <-- First Create ( List ) <-- iska kaam hai Pages ko display karta hai
    const HomeMobileScreen(),
    const SkillsMobileScreen(),
    const ProjectsMobileScreen(),
    const CrowScreen()
  ];
  


GlobalKey<ScaffoldState> _drawerKey = GlobalKey();


  
  
  
  
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height * 1;
    double width = MediaQuery.of(context).size.width * 1;
    return ResponsiveBuilder(
    builder: (context, sizingInformation) {
      //* Check the sizing information here and return your UI
          if (sizingInformation.deviceScreenType == DeviceScreenType.desktop) {
          return Consumer<MainScreeProvider>(             //* <-- Provider Use
      builder: (context, provider, child) {
        return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              black,
              cyan
            ],
            begin: const FractionalOffset(0.4, 0.4),
            end: const FractionalOffset(0.4, 0.9),
          )
        ),
        child: Center(
          child: Container(
            height: height * .95,
            width: width * .95,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              color: lightBlack,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Header(
                  currenIndex: provider.currentIndex,
                  onPreass: () {
                    provider.setValue(0);
                     log("Clicked on home");  },
                  onPreass2: () { 
                      provider.setValue(1);
                   }, 
                  onPreass3: () { 
                    provider.setValue(2);
                   },
                  onPreass4: () { 
                      provider.setValue(3);
                   },
                  ),
                  _widgetOptions.elementAt(
                   provider.currentIndex
                   ) ,
              
              ],
            )),
          ),
        ),
      
    );
      });
          
          
          
          
       
        }

        if (sizingInformation.deviceScreenType == DeviceScreenType.tablet) {
          return Consumer<MainScreeProvider>(             //* <-- Provider Use
      builder: (context, provider, child) {
          return  SafeArea(
          child: Scaffold(
               key: _drawerKey,
               drawer: SideMenu(),
              body: Container(
            decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
             black,
             cyan
              ],
              begin: const FractionalOffset(0.4, 0.4),
              end: const FractionalOffset(0.4, 0.9),
            )
          ),
          child: Center(
            child: Container(
              height: height * .91,
              width: width * .95,
              decoration: BoxDecoration(
             borderRadius: BorderRadius.circular(20),
             color: lightBlack,
              ),
              child:ListView(
                children: [
                    Container(
                     height: height*0.08,
                      width: double.infinity,
                       color: Colors.grey,
                      child: Row(
                        children: [
                          SizedBox(width: width*0.05),
                          Padding(
                            padding: const EdgeInsets.only(top: 10),
                            child: IconButton(onPressed: (){
                                _drawerKey.currentState!.openDrawer();
                            }, icon: Icon(Icons.menu,color: cyan,size: 30,)),
                          ),
                          Spacer(),
                          Padding(
                            padding: const EdgeInsets.only(top: 10),
                            child: Text("Portfolio.",style: TextStyle(fontSize: 20,color: cyan,fontWeight: FontWeight.bold),),
                          ),
                          SizedBox(width: width*0.05),
                        ],
                      ),
                    ),
                   _widgetMobileOptions.elementAt(
                     provider.currentIndex
                  ) ,
                ],
              )
              
      
              ),
            ),
          ),
              
            ),
        );
      }

        );
        }

        if (sizingInformation.deviceScreenType == DeviceScreenType.watch) {
          return Container(color:Colors.yellow);
        }

        return Consumer<MainScreeProvider>(             //* <-- Provider Use
      builder: (context, provider, child) {
          return  SafeArea(
          child: Scaffold(
               key: _drawerKey,
               drawer: SideMenu(),
              body: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
             black,
             cyan
              ],
              begin: const FractionalOffset(0.4, 0.4),
              end: const FractionalOffset(0.4, 0.9),
            )
          ),
          child: Center(
            child: Container(
              height: height * .91,
              width: width * .95,
              decoration: BoxDecoration(
             borderRadius: BorderRadius.circular(20),
             color: lightBlack,
              ),
              child:ListView(
                // shrinkWrap: true,
                children: [
                    Container(
                      height: height*0.08,
                      width: double.infinity,
                      //  color: Colors.pink,
                      child: Row(
                        children: [
                          SizedBox(width: width*0.05),
                          Padding(
                            padding: const EdgeInsets.only(top: 10),
                            child: IconButton(onPressed: (){
                                _drawerKey.currentState!.openDrawer();
                            }, icon: Icon(Icons.menu,color: cyan,size: 30,)),
                          ),
                          Spacer(),
                          Padding(
                            padding: const EdgeInsets.only(top: 10),
                            child: Text("Portfolio.",style: TextStyle(fontSize: 20,color: cyan,fontWeight: FontWeight.bold),),
                          ),
                          SizedBox(width: width*0.05),
                        ],
                      ),
                    ),
                   _widgetMobileOptions.elementAt(
                     provider.currentIndex
                  ) ,
                ],
              )
              
      
              ),
            ),
          ),
              
            ),
        );
      }

        );
        
        
        
        
  });
    
    
   
  }
}
    