import 'package:flutter/material.dart';
import 'package:fms_web/constants/primary.dart';

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
          child:       myDrawer(
          titleone: "P U R C H A S E", titletwo: "V O U C H E R", titlethree: "H I S T O R Y", Drawerimage: 'assets/images/shopping-cart.png', pageone: null, pagetwo: null,),

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


  // Expanded(
  //       flex: 1,
  //       child: Container(
  //         color: Colors.blue,
  //         child:myDrawer(titleone: "S A L E S", titletwo: "V O U C H E R", titlethree: "H I S T O R Y", Drawerimage: 'assets/images/saless.png',),

  //       )),