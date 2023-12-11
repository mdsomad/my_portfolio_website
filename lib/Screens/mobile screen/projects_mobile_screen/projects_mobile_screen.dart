import 'package:flutter/material.dart';
import 'package:my_portfolio_website/Resources/Colors/app_colors.dart';
import 'package:my_portfolio_website/Screens/mobile%20screen/projects_mobile_screen/Widgets/backend_projects_mobile.dart';
import 'package:my_portfolio_website/Screens/mobile%20screen/projects_mobile_screen/Widgets/frontend_projects_mobile.dart';
import 'package:my_portfolio_website/Screens/mobile%20screen/skills_mobile_view/Widgets/languages_mobile_screen.dart';

class ProjectsMobileScreen extends StatefulWidget {
  const ProjectsMobileScreen({super.key});

  @override
  State<ProjectsMobileScreen> createState() => ProjectsMobileScreenState();
}

class ProjectsMobileScreenState extends State<ProjectsMobileScreen> with SingleTickerProviderStateMixin  {

   late TabController _tabCon;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _tabCon = TabController(length: 2, initialIndex: 0, vsync: this);
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
              width: 120,
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Tab(
                  text: "FrontendProjects",
                ),
              ),
            ),
            Container(
              alignment: Alignment.center,
              width: 120,
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Tab(
                  text: "BackendProjects",
                ),
              ),
            ),
          ],
                 ),


        Container(
          height:height *0.77,
          width: double.infinity,
          child: TabBarView(controller: _tabCon, children: [
                FrontendProjectsMobileScreen(),
                BackendProjectsMobileScreen(),

              ]),
        ),
        
        
      ],
    ));
  }
}




