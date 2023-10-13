import 'package:flutter/material.dart';
import 'package:fms_web/Screens/purchese/des_perchase.dart';
import 'package:fms_web/Screens/purchese/mob_perchase.dart';
import 'package:fms_web/Screens/purchese/purchase_Management/voucher_input.dart';
import 'package:fms_web/Screens/purchese/tab.perchase.dart';
import 'package:fms_web/constants/primary.dart';
import 'package:fms_web/constants/responsive-page.dart';

class purchese_page extends StatefulWidget {
  final int pageNo;
  const purchese_page({super.key, required this.pageNo});

  @override
  State<purchese_page> createState() => _purchese_pageState();
}

class _purchese_pageState extends State<purchese_page> {

   List<Widget> _pages = [
  perchese_voucher(),
  perchese_voucher(),
  perchese_voucher()
  
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
          child:myDrawer(
          titleone: "P U R C H A S E", titletwo: "V O U C H E R", titlethree: "H I S T O R Y", Drawerimage: 'assets/images/shopping-cart.png', pageone: purchese_page(pageNo: 2), pagetwo: null,),

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
drawer: ismobile?myDrawer(
          titleone: "P U R C H A S E", titletwo: "V O U C H E R", titlethree: "H I S T O R Y", Drawerimage: 'assets/images/shopping-cart.png', pageone: purchese_page(pageNo: 2), pagetwo: null,):null,
      ),
      
    );
  }
}