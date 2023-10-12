import 'package:flutter/material.dart';
import 'package:fms_web/constants/primary.dart';

class mob_ship extends StatefulWidget {
  const mob_ship({super.key});

  @override
  State<mob_ship> createState() => _mob_shipState();
}

class _mob_shipState extends State<mob_ship> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(

body: Container(
  color: Colors.green,
),
      ),
    );
  }
}