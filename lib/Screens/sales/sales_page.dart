import 'package:flutter/material.dart';
import 'package:fms_web/Screens/sales/des_sales.dart';
import 'package:fms_web/Screens/sales/mob_sales.dart';
import 'package:fms_web/Screens/sales/sales_management/sale_ticket.dart';
import 'package:fms_web/Screens/sales/tab_sales.dart';
import 'package:fms_web/constants/primary.dart';
import 'package:fms_web/constants/responsive-page.dart';

class sales_page extends StatefulWidget {
  final int pageNo;
  const sales_page({super.key, required this.pageNo});

  @override
  State<sales_page> createState() => _sales_pageState();
}

class _sales_pageState extends State<sales_page> {


   List<Widget> _pages = [
  sale_ticket(),
  sale_ticket(),
  sale_ticket()
  
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
          child:myDrawer(titleone: "S A L E S", titletwo: "V O U C H E R", titlethree: "H I S T O R Y", Drawerimage: 'assets/images/saless.png', pageone: sales_page(pageNo: 1,), pagetwo: null,),

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
drawer: ismobile?myDrawer(titleone: "S A L E S", titletwo: "V O U C H E R", titlethree: "H I S T O R Y", Drawerimage: 'assets/images/saless.png', pageone: sales_page(pageNo: 1), pagetwo: null,):null,
 )
      
    );
  }
}