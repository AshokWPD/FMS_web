import 'package:flutter/material.dart';
import 'package:fms_web/constants/primary.dart';

class DashBoard_page extends StatefulWidget {
  const DashBoard_page({super.key});

  @override
  State<DashBoard_page> createState() => _DashBoard_pageState();
}

class _DashBoard_pageState extends State<DashBoard_page> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
                backgroundColor: pribackcolor,

body: Center(child: loadinganimat),
      ),
    );
  }
}