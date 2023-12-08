
import 'dart:html';

import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:fms_web/constants/primary.dart';
import 'package:fms_web/utils/Navigation/nav_bar.dart';
import 'package:firebase_core/firebase_core.dart';

void main() {
    WidgetsFlutterBinding.ensureInitialized();
    Firebase.initializeApp(
      options: const FirebaseOptions(
      apiKey: "AIzaSyBvT-x0Ip7t4HH0Ggf-1RwEuEoemVshSXc",
  authDomain: "sand-world-48c36.firebaseapp.com",
  projectId: "sand-world-48c36",
  storageBucket: "sand-world-48c36.appspot.com",
  messagingSenderId: "196162249798",
  appId: "1:196162249798:web:3846b11edd326603199647"
          ));

  // Initialize Flutter bindings

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
