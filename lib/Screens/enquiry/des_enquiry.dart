import 'package:flutter/material.dart';
import 'package:fms_web/Screens/enquiry/enquiry_management/enquiry_order.dart';
import 'package:fms_web/constants/primary.dart';

class des_enquiry extends StatefulWidget {
    final int pageNo;
  const des_enquiry({super.key, required this.pageNo});

  @override
  State<des_enquiry> createState() => _des_enquiryState();
}

class _des_enquiryState extends State<des_enquiry> {

 List<Widget> _pages = [
  enquiry_order(),
  enquiry_order(),
  enquiry_order()
  
  ];


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
          child:myDrawer(titleone: "E N Q U I R Y", titletwo: "V O U C H E R", titlethree: "H I S T O R Y", Drawerimage: 'assets/images/enquiry.png', pageone: 1, pagetwo: null,),

        )),
      Expanded(
        flex: 5,
        child: Container(
          child: _pages[widget.pageNo],
        ))
    ],
  ),
),
      ),
    );
  }
}