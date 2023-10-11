
import 'dart:html';

import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:fms_web/constants/primary.dart';
import 'package:fms_web/utils/Navigation/nav_bar.dart';


void main() {
    WidgetsFlutterBinding.ensureInitialized(); // Initialize Flutter bindings

  runApp(const MyApp());

}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
        title: '',
        home: AnimatedSplashScreen(
            duration: 1000,
            splash: Image.asset("assets/images/dump-truck.png"),
            nextScreen: Nav_bar(),
            splashTransition: SplashTransition.slideTransition,
            backgroundColor: Colors.blue));
  }
}
