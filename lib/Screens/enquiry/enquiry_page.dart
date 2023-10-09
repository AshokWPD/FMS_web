import 'package:flutter/material.dart';
import 'package:fms_web/constants/primary.dart';

class enquiry_page extends StatefulWidget {
  const enquiry_page({super.key});

  @override
  State<enquiry_page> createState() => _enquiry_pageState();
}

class _enquiry_pageState extends State<enquiry_page> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
                backgroundColor: pribackcolor,

body: Center(child: Text("ENQUIRY")),
      ),
    );
  }
}