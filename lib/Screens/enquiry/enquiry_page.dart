import 'package:flutter/material.dart';
import 'package:fms_web/Screens/enquiry/des_enquiry.dart';
import 'package:fms_web/Screens/enquiry/enquiry_management/enquiry_order.dart';
import 'package:fms_web/Screens/enquiry/mob_enquiry.dart';
import 'package:fms_web/Screens/enquiry/tab_enquiry.dart';
import 'package:fms_web/constants/primary.dart';
import 'package:fms_web/constants/responsive-page.dart';

class enquiry_page extends StatefulWidget {
    final int pageNo;
  const enquiry_page({super.key, required this.pageNo});

  @override
  State<enquiry_page> createState() => _enquiry_pageState();
}

class _enquiry_pageState extends State<enquiry_page> {
 
 List<Widget> _pages = [
  enquiry_order(),
  enquiry_order(),
  enquiry_order()
  
  ];

  @override
  Widget build(BuildContext context) {
      final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    bool isDesktop = MediaQuery.of(context).size.width >= 1100;
    bool istablet = MediaQuery.of(context).size.width >= 800;
    bool ismobile = MediaQuery.of(context).size.width < 800;   
    
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: ismobile?AppBar():null,

body:ismobile?Container(
 child: _pages[widget.pageNo],
): Container(
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
          // color: Colors.pink,
        ))
    ],
  ),
),
drawer: ismobile?myDrawer(titleone: "E N Q U I R Y", titletwo: "V O U C H E R", titlethree: "H I S T O R Y", Drawerimage: 'assets/images/enquiry.png', pageone: 1, pagetwo: null,):null
  ),
      
    );
  }
}