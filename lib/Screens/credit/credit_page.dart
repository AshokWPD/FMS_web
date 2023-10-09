import 'package:flutter/material.dart';
import 'package:fms_web/constants/primary.dart';

class Credit_page extends StatefulWidget {
  const Credit_page({super.key});

  @override
  State<Credit_page> createState() => _Credit_pageState();
}

class _Credit_pageState extends State<Credit_page> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
                backgroundColor: pribackcolor,

body: Center(child: Text("CREDIT")),
      ),
    );
  }
}