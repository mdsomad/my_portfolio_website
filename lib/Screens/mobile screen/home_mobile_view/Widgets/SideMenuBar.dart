
import 'package:flutter/material.dart';
import 'package:my_portfolio_website/Provider/main_screen_provider.dart';
import 'package:my_portfolio_website/Resources/Colors/app_colors.dart';
import 'package:my_portfolio_website/Resources/Components/Rounded_Button.dart';
import 'package:provider/provider.dart';



class SideMenu extends StatefulWidget {
  const SideMenu({Key? key}) : super(key: key);

  @override
  State<SideMenu> createState() => _SideMenuState();
}

class _SideMenuState extends State<SideMenu> {
  @override
  Widget build(BuildContext context) {
    return Consumer<MainScreeProvider>(             //* <-- Provider Use
      builder: (context, provider, child) {
        return Drawer(
      child: Container(
        decoration: BoxDecoration(color: lightBlack),
        child: SafeArea(
          child:Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
            IconButton(onPressed: (){
              Navigator.pop(context);
            }, icon:Icon(Icons.close,size:28,color: cyan,)),
          ],),
           
          Padding(
            padding: const EdgeInsets.only(bottom: 20),
            child: Center(
              child: RoundedButton(title: "Home",onPreass:(){
                 provider.setValue(0);
                 Navigator.pop(context);
              },
               backgroundColor: provider.currentIndex == 0 ? lightBlack : cyan,
               textColor: provider.currentIndex == 0 ? cyan : Colors.black,
              width: 180,
              ),
            ),
          ),
          Padding(
           padding: const EdgeInsets.only(bottom: 20),
            child: Center(
              child: RoundedButton(title: "Skills",onPreass:(){
                 provider.setValue(1);
                 Navigator.pop(context);
              },
               backgroundColor: provider.currentIndex == 1 ? lightBlack : cyan,
               textColor: provider.currentIndex == 1 ? cyan : Colors.black,
              width: 180,
              ),
            ),
          ),
          Padding(
           padding: const EdgeInsets.only(bottom: 20),
            child: Center(
              child: RoundedButton(title: "Projects",onPreass:(){
                 provider.setValue(2);
                 Navigator.pop(context);
              },
              backgroundColor: provider.currentIndex == 2 ? lightBlack : cyan,
               textColor: provider.currentIndex == 2 ? cyan : Colors.black,
              width: 180,
              ),
            ),
          ),
          Padding(
           padding: const EdgeInsets.only(bottom: 20),
            child: Center(
              child: RoundedButton(title: "Crow",onPreass:(){
                   provider.setValue(3);
                   Navigator.pop(context);
              },
               backgroundColor: provider.currentIndex == 3 ? lightBlack : cyan,
               textColor: provider.currentIndex == 3 ? cyan : Colors.black,
              width: 180,
              ),
            ),
          ),
        ],)),
      )
    );
      });
    
    
    
  }}