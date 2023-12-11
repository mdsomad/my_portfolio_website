import 'package:flutter/material.dart';
import 'package:my_portfolio_website/Resources/Colors/app_colors.dart';
import 'package:my_portfolio_website/Screens/mobile%20screen/skills_mobile_view/Widgets/languages_mobile_screen.dart';

import 'Widgets/backend_mobile_screen.dart';
import 'Widgets/design_mobile_screen.dart';
import 'Widgets/extra_mobile_screen.dart';
import 'Widgets/frameworks_mobile_screen.dart';

class SkillsMobileScreen extends StatefulWidget {
  const SkillsMobileScreen({super.key});

  @override
  State<SkillsMobileScreen> createState() => _SkillsMobileScreenState();
}

class _SkillsMobileScreenState extends State<SkillsMobileScreen> with SingleTickerProviderStateMixin  {

   late TabController _tabCon;

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
    return Expanded(child: Column(
      children: [
         TabBar(
          controller: _tabCon,
          indicatorColor: cyan,
          unselectedLabelColor: Colors.white,
          indicatorWeight: 4,
          labelColor: cyan,
          labelPadding: EdgeInsets.symmetric(horizontal: 10, vertical: 1),
          isScrollable: false,
          labelStyle: TextStyle(fontWeight: FontWeight.bold),
          dividerColor: lightBlack,
          tabs: [
           
            Container(
              alignment: Alignment.center,
              width: 80,
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Tab(
                  text: "Languages",
                ),
              ),
            ),
            Container(
              alignment: Alignment.center,
              width: 80,
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Tab(
                  text: "Frameworks",
                ),
              ),
            ),
            Container(
              alignment: Alignment.center,
              width: 80,
              child: Tab(
                text: "Backend",
              ),
            ),
            Container(
              width: 80,
              alignment: Alignment.center,
              child: Tab(
                text: "Design",
              ),
            ),
            Container(
              width: 80,
              alignment: Alignment.center,
              child: Tab(
                text: "Extra",
              ),
            ),
          ],
                 ),


        Container(
          height:height *0.77,
          width: double.infinity,
          child: TabBarView(controller: _tabCon, children: [
                LanguagesMobileScreen(),
                FrameworksMobileScreen(),
                BackendMobileScreen(),
                DesingMobileScreen(),
                ExtraMobileScreen(),
              ]),
        ),
        
        
      ],
    ));
  }
}




