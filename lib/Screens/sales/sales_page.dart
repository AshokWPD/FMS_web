import 'package:flutter/material.dart';
import 'package:fms_web/constants/primary.dart';

class sales_page extends StatefulWidget {
  const sales_page({super.key});

  @override
  State<sales_page> createState() => _sales_pageState();
}

class _sales_pageState extends State<sales_page> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
                backgroundColor: pribackcolor,

body: Center(child: Text("SALE")),
      ),
    );
  }
}