// import 'package:flutter/material.dart';
// import 'package:fms_web/Screens/purchese/des_perchase.dart';
// import 'package:fms_web/Screens/purchese/purchase_Management/voucher_input.dart';
// import 'package:fms_web/constants/primary.dart';

// class tab_perhace extends StatefulWidget {
//     final int pageNo;
//   const tab_perhace({super.key, required this.pageNo});

//   @override
//   State<tab_perhace> createState() => _tab_perhaceState();
// }


// class _tab_perhaceState extends State<tab_perhace> {
//  List<Widget> _pages = [
//   perchese_voucher(),
//   perchese_voucher(),
//   perchese_voucher()
  
//   ];

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: Scaffold(

// body: Container(
//   color: Colors.green,
//   child: Row(
//     children: [
//       Expanded(
//         flex: 2,
//         child: Container(
//           color: Colors.blue,
//           child:myDrawer(
//           titleone: "P U R C H A S E", titletwo: "V O U C H E R", titlethree: "H I S T O R Y", Drawerimage: 'assets/images/shopping-cart.png', pageone: tab_perhace(pageNo: 1,), pagetwo: null,),

//         )),
//       Expanded(
//         flex: 7,
//         child: Container(
//           child: _pages[widget.pageNo],
//         ))
//     ],
//   ),
// ),
//       ),
//     );
//   }
// }


//   // Expanded(
//   //       flex: 1,
//   //       child: Container(
//   //         color: Colors.blue,
//   //         child:myDrawer(titleone: "S A L E S", titletwo: "V O U C H E R", titlethree: "H I S T O R Y", Drawerimage: 'assets/images/saless.png',),

//   //       )),