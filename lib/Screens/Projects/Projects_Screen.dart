import 'package:flutter/material.dart';
import 'package:my_portfolio_website/Resources/Colors/app_colors.dart';
import 'package:my_portfolio_website/Screens/Projects/Widgets/backend_screen.dart';
import 'package:my_portfolio_website/Screens/Projects/Widgets/frontend_screen.dart';
import 'package:my_portfolio_website/Screens/Projects/Widgets/live_app_screen.dart';




class ProjectScreen extends StatefulWidget {
  const ProjectScreen({super.key});

  @override
  State<ProjectScreen> createState() => _ProjectScreenState();
}

class _ProjectScreenState extends State<ProjectScreen> with SingleTickerProviderStateMixin {



  late TabController _tabCon;

   final _tabs = [
    const Tab(text: "Frontend Projects"),
    const Tab(text: "Backend Projects"),
    const Tab(text: "Live Apps"),
  ];
  

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
      _tabCon = TabController(length: 3, initialIndex: 1, vsync: this);
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
             SizedBox(height:height * 0.01,),
             TabBar(
              controller: _tabCon,
              tabs: _tabs,
              labelColor: cyan,
              indicatorColor: cyan,
              labelStyle: const TextStyle(fontSize: 18,fontWeight: FontWeight.bold,),
              unselectedLabelColor: Colors.white,
              dividerColor: lightBlack,
                      ),


              Expanded(
                child: Container(
                  child: TabBarView(controller: _tabCon, children: const [
                   FrontendScreen(),
                   BackendProjectScreen(),
                   LiveAppScreen(),
                            ]),
                ),
              ),
              
            ],
          ),
          ),
    );
  }
}
// class ProjectScreen extends StatefulWidget {
//   const ProjectScreen({super.key});

//   @override
//   State<ProjectScreen> createState() => _ProjectScreenState();
// }

// class _ProjectScreenState extends State<ProjectScreen> {
//   @override
//   Widget build(BuildContext context) {
//     return  Expanded(
//       child: Container(
//         width: double.infinity,
//           color: Colors.yellow,
//           child: Center(child: Text("Project Screen", style: TextStyle(fontSize: 50,fontWeight: FontWeight.bold),)),
//           ),
//     );
//   }
// }