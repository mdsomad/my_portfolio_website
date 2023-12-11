import 'package:flutter/material.dart';
import 'package:my_portfolio_website/Provider/main_screen_provider.dart';
import 'package:my_portfolio_website/Screens/main_screendart.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(providers: [                //* <-- Yah Method Sa MultiProvider Use Kar Sakte hai
          
        
        ChangeNotifierProvider<MainScreeProvider>(
          create:(context)=>MainScreeProvider()
          ),

    ],

    child:MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'My Portfolio Website',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MainSreen(),
    )

    );
    
    
    
    
    
    
    
   
  }
}

