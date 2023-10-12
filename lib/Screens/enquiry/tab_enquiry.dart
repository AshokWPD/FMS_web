import 'package:flutter/material.dart';
import 'package:fms_web/constants/primary.dart';

class tab_enquiry extends StatefulWidget {
  const tab_enquiry({super.key});

  @override
  State<tab_enquiry> createState() => _tab_enquiryState();
}

class _tab_enquiryState extends State<tab_enquiry> {
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
          child:myDrawer(titleone: "E N Q U I R Y", titletwo: "V O U C H E R", titlethree: "H I S T O R Y", Drawerimage: 'assets/images/enquiry.png', pageone: null, pagetwo: null,),

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