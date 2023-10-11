import 'package:flutter/material.dart';

class tab_perhace extends StatefulWidget {
  const tab_perhace({super.key});

  @override
  State<tab_perhace> createState() => _tab_perhaceState();
}

class _tab_perhaceState extends State<tab_perhace> {
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