import 'package:flutter/material.dart';
import 'package:fms_web/constants/primary.dart';

class purchese_page extends StatefulWidget {
  const purchese_page({super.key});

  @override
  State<purchese_page> createState() => _purchese_pageState();
}

class _purchese_pageState extends State<purchese_page> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
                backgroundColor: pribackcolor,

body: Center(child: Text("PURCHESE")),
      ),
    );
  }
}