// ignore_for_file: unused_import

import 'package:flutter/material.dart';
import 'package:my_portfolio_website/Resources/Colors/app_colors.dart';
import 'package:my_portfolio_website/Resources/Components/Header.dart';
import 'package:my_portfolio_website/Screens/Skills/Widgets/backend_screen.dart';
import 'package:my_portfolio_website/Screens/Skills/Widgets/design_screen.dart';
import 'package:my_portfolio_website/Screens/Skills/Widgets/extra_screen.dart';
import 'package:my_portfolio_website/Screens/Skills/Widgets/frameworks_screen.dart';
import 'package:my_portfolio_website/Screens/Skills/Widgets/languages_screen.dart';




class SkillScreen extends StatefulWidget {
  const SkillScreen({super.key});

  @override
  State<SkillScreen> createState() => _SkillScreenState();
}

class _SkillScreenState extends State<SkillScreen> with SingleTickerProviderStateMixin  {

   late TabController _tabCon;

   final _tabs = [
    const Tab(text: "Languages"),
    const Tab(text: "Frameworks"),
    const Tab(text: "Backend"),
    const Tab(text: "Design"),
    const Tab(text: "Extra"),
  ];
   
   
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
      _tabCon = TabController(length: 5, initialIndex: 0, vsync: this);
  }
  
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height * 1;
    double width = MediaQuery.of(context).size.width * 1;
    return  Expanded(
      child: Container(
        width: double.infinity,
          // color: Colors.blue,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
             SizedBox(height:height * 0.03,),
             TabBar(
              controller: _tabCon,
              tabs: _tabs,
              labelColor: cyan,
              indicatorColor: cyan,
              labelStyle: const TextStyle(fontSize: 18,fontWeight: FontWeight.bold),
              unselectedLabelColor: Colors.white,
              dividerColor: lightBlack,
           ),


              Expanded(
                child: Container(
                  child: TabBarView(controller: _tabCon, children: const [
                   LanguagesScreen(),
                   FrameworksScreen(),
                   BackendScreen(),
                   DesignScreen(),
                   ExtraScreen()
                            ]),
                ),
              ),
              
            ],
          ),
          ),
    );
  }
}