import 'package:flutter/material.dart';
import 'package:fms_web/Screens/credit/credit_management/credit_request.dart';
import 'package:fms_web/Screens/credit/des_credit.dart';
import 'package:fms_web/Screens/credit/mob_credit.dart';
import 'package:fms_web/Screens/credit/tab_credit.dart';
import 'package:fms_web/constants/primary.dart';
import 'package:fms_web/constants/responsive-page.dart';

class Credit_page extends StatefulWidget {
    final int pageNo;
  const Credit_page({super.key, required this.pageNo});

  @override
  State<Credit_page> createState() => _Credit_pageState();
}

class _Credit_pageState extends State<Credit_page> {
 

  List<Widget> _pages = [
  credit_request(),
  credit_request(),
  credit_request()
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
           child:myDrawer(titleone: "C R E D I T", titletwo: "V O U C H E R", titlethree: "H I S T O R Y", Drawerimage: 'assets/images/credit-card.png', pageone: 1, pagetwo: null,),

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
drawer: ismobile?myDrawer(titleone: "C R E D I T", titletwo: "V O U C H E R", titlethree: "H I S T O R Y", Drawerimage: 'assets/images/credit-card.png', pageone: 1, pagetwo: null,):null
 ),
      
    );
  }
}