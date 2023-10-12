import 'package:flutter/material.dart';
import 'package:fms_web/constants/primary.dart';

class tab_ship extends StatefulWidget {
  const tab_ship({super.key});

  @override
  State<tab_ship> createState() => _tab_shipState();
}

class _tab_shipState extends State<tab_ship> {
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
          child:myDrawer(titleone: "S H I P M E N T", titletwo: "V O U C H E R", titlethree: "H I S T O R Y", Drawerimage: 'assets/images/dump-truck.png', pageone: null, pagetwo: null,),

        )),
      Expanded(
        flex: 5,
        child: Container(
          // color: Colors.pink,
        ))
    ],
  ),
),
      ),
    );
  }
}