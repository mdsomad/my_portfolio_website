
import 'package:flutter/material.dart';
import 'package:my_portfolio_website/Resources/Colors/app_colors.dart';
import 'package:my_portfolio_website/Resources/Components/Rounded_Button.dart';

class Header extends StatelessWidget {
  const Header({
    super.key, required this.onPreass, required this.onPreass2, required this.onPreass3, required this.onPreass4, required this.currenIndex,
  });

  final VoidCallback onPreass,onPreass2,onPreass3,onPreass4;
  final int currenIndex;

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height * 1;
    double width = MediaQuery.of(context).size.width * 1;
    return Container(
      height: height*0.1,
      width: double.infinity,
      padding: const EdgeInsets.only(top: 20),
      decoration: const BoxDecoration(
      // color: Colors.red,
        borderRadius: BorderRadius.only(topLeft: Radius.circular(30),topRight:Radius.circular(30))
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 70,top: 20),
            child: Text('Portfolio.', style: TextStyle(color: cyan, fontWeight: FontWeight.bold, fontSize: 30),),
          ),
          const Spacer(),
          RoundedButton(title: "home",onPreass:onPreass,backgroundColor: currenIndex == 0 ? lightBlack : cyan,
          textColor: currenIndex == 0 ? cyan : Colors.black
          ),
          SizedBox(width: width*0.02,),
          RoundedButton(title: "Skills",onPreass: onPreass2,backgroundColor: currenIndex == 1 ? lightBlack : cyan,
          textColor: currenIndex == 1 ? cyan : Colors.black
          ),
          SizedBox(width: width*0.02,),
          RoundedButton(title: "Projects",onPreass: onPreass3,backgroundColor: currenIndex == 2 ? lightBlack : cyan,
          textColor: currenIndex == 2 ? cyan : Colors.black
          ),
          SizedBox(width: width*0.02,),
          RoundedButton(title: "Crew",onPreass:onPreass4,backgroundColor: currenIndex == 3 ? lightBlack : cyan,
          textColor: currenIndex == 3 ? cyan : Colors.black
          ),
          SizedBox(width: width*0.03,),
        ],
      ),
    );
  }
}
