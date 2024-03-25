// ignore_for_file: unused_import

import 'package:flutter/material.dart';

//import 'package:google_fonts/google_fonts.dart';
import 'package:store_app/app_constants.dart';
import 'package:store_app/screens/home_screen.dart';
import 'package:store_app/screens/product_details_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  
  @override
  Widget build(BuildContext context) { 
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Smart Home Store',
      theme: ThemeData(),
      home: const HomeScreen(),
      
      /*initialRoute: HomeScreen.screenRoute,
      routes: {
        HomeScreen.screenRoute: (context)=> HomeScreen(),
        DetailsScreen.screenRoute: (context) => DetailsScreen(product: ,),
      },*/
    );

  }
  
}

