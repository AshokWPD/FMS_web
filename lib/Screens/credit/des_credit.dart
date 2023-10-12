import 'package:flutter/material.dart';
import 'package:fms_web/Screens/credit/credit_management/credit_request.dart';
import 'package:fms_web/constants/primary.dart';

class des_credit extends StatefulWidget {
    final int pageNo;

  const des_credit({super.key, required this.pageNo});

  @override
  State<des_credit> createState() => _des_creditState();
}

class _des_creditState extends State<des_credit> {

 List<Widget> _pages = [
  credit_request(),
  credit_request(),
  credit_request()
  
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
          child:myDrawer(titleone: "C R E D I T", titletwo: "V O U C H E R", titlethree: "H I S T O R Y", Drawerimage: 'assets/images/credit-card.png', pageone: 1, pagetwo: null,),

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