import 'package:flutter/material.dart';
import 'package:fms_web/constants/primary.dart';

class ship_page extends StatefulWidget {
  const ship_page({super.key});

  @override
  State<ship_page> createState() => _ship_pageState();
}

class _ship_pageState extends State<ship_page> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
                backgroundColor: pribackcolor,

body: Center(child: Text("SHIP")),
      ),
    );
  }
}