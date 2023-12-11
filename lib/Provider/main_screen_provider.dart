

import 'package:flutter/material.dart';

class MainScreeProvider with ChangeNotifier {
   int currentIndex = 0;

   setValue(int index){
     currentIndex = index;
     notifyListeners();
   }
   
}