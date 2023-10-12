import 'package:flutter/material.dart';
import 'package:fms_web/Screens/purchese/purchase_Management/voucher_input.dart';
import 'package:fms_web/Screens/sales/sales_management/sale_ticket.dart';
import 'package:fms_web/constants/primary.dart';

class des_ship extends StatefulWidget {
    final int pageNo;

  const des_ship({super.key, required this.pageNo});

  @override
  State<des_ship> createState() => _des_shipState();
}

class _des_shipState extends State<des_ship> {

 List<Widget> _pages = [
  sale_ticket(),
  sale_ticket(),
  sale_ticket()
  
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
          child:myDrawer(titleone: "S H I P M E N T", titletwo: "V O U C H E R", titlethree: "H I S T O R Y", Drawerimage: 'assets/images/dump-truck.png', pageone: des_ship(pageNo: 1), pagetwo: null,),

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