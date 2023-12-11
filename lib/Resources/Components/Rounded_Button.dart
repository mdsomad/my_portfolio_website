// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

class RoundedButton extends StatelessWidget {

  String title;
  VoidCallback onPreass;
  Color backgroundColor ,textColor;
  double width;
  double height;


  RoundedButton({
    Key? key,
    required this.title,
    required this.onPreass,
    this.backgroundColor = const Color(0xff01eefe),
    this.textColor = Colors.black,
    this.width = 100,
    this.height = 30
  
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
          height: height,
      child: ElevatedButton(
          onPressed:onPreass,
          style: ElevatedButton.styleFrom(
            backgroundColor: backgroundColor,
            shadowColor: backgroundColor,
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(30))
            )
          ),
          child: Text(title,style: TextStyle(color: textColor,fontSize: 12),),
        ),
    );
  }
}

// class RoundedButton extends StatelessWidget {

//   String title;
//   VoidCallback onPreass;
//   Color backgroundColor ,textColor;


//   RoundedButton({
//     Key? key,
//     required this.title,
//     required this.onPreass,
//     this.backgroundColor = const Color(0xff01eefe),
//     this.textColor = Colors.black,
  
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Material(
//        borderRadius: BorderRadius.circular(30),
//         color: backgroundColor,
//       child: InkWell(
//         onTap: onPreass,
//         child: Container(
//           width: 100,
//           height: 30,
//           decoration: BoxDecoration(
//             borderRadius: BorderRadius.circular(30)
//           ),
//           child: Center(child: Text(title,style: TextStyle(color: textColor),),)
//         ),
//       ),
//     );
//   }
// }