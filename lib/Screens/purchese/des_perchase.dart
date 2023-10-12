import 'package:flutter/material.dart';
import 'package:fms_web/Screens/purchese/purchase_Management/voucher_input.dart';
import 'package:fms_web/constants/primary.dart';

class des_perchase extends StatefulWidget {
  final int pageNo;
  const des_perchase({super.key, required this.pageNo});

  @override
  State<des_perchase> createState() => _des_perchaseState();
}

class _des_perchaseState extends State<des_perchase> {

 List<Widget> _pages = [
  perchese_voucher(),
  perchese_voucher(),
  perchese_voucher()
  
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
          child:myDrawer(
          titleone: "P U R C H A S E", titletwo: "V O U C H E R", titlethree: "H I S T O R Y", Drawerimage: 'assets/images/shopping-cart.png', pageone: des_perchase(pageNo: 2), pagetwo: null,),

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
      ),
    );
  }
}