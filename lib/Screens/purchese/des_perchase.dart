import 'package:flutter/material.dart';
import 'package:fms_web/constants/primary.dart';

class des_perchase extends StatefulWidget {
  const des_perchase({super.key});

  @override
  State<des_perchase> createState() => _des_perchaseState();
}

class _des_perchaseState extends State<des_perchase> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(

body: Container(
  color: Colors.green,
  child: Row(
    children: [
      
      Expanded(
        flex: 1,
        child: Container(
          color: Colors.blue,
          child:       myDrawer(titleone: "titleone", titletwo: "titletwo", titlethree: "titlethree"),

        )),
      Expanded(
        flex: 5,
        child: Container(
          color: Colors.pink,
        ))
    ],
  ),
),
      ),
    );
  }
}