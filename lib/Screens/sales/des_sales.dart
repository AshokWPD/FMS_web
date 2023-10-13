// import 'package:flutter/material.dart';
// import 'package:fms_web/Screens/sales/sales_management/sale_ticket.dart';
// import 'package:fms_web/constants/primary.dart';

// class des_sales extends StatefulWidget {
//   final int pageNo;
//   const des_sales({super.key, required this.pageNo});

//   @override
//   State<des_sales> createState() => _des_salesState();
// }

// class _des_salesState extends State<des_sales> {




//  List<Widget> _pages = [
//   sale_ticket(),
//   sale_ticket(),
//   sale_ticket()
  
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
      
//         Expanded(
//         flex: 1,
//         child: Container(
//           color: Colors.blue,
//           child:myDrawer(titleone: "S A L E S", titletwo: "V O U C H E R", titlethree: "H I S T O R Y", Drawerimage: 'assets/images/saless.png', pageone: 1, pagetwo: null,),

//         )),
//       Expanded(
//         flex: 5,
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













// //   @override
// //   Widget build(BuildContext context) {
// //     return MaterialApp(
// //       debugShowCheckedModeBanner: false,
// //       home: Scaffold(

// // body: Container(
// //   color: Colors.green,
// //   child: Row(
// //     children: [
      
// //         Expanded(
// //         flex: 1,
// //         child: Container(
// //           color: Colors.blue,
// //           child:myDrawer(titleone: "S A L E S", titletwo: "V O U C H E R", titlethree: "H I S T O R Y", Drawerimage: 'assets/images/saless.png', pageone: null, pagetwo: null,),

// //         )),
// //       Expanded(
// //         flex: 5,
// //         child: Container(
// //           // color: Colors.pink,
// //         ))
// //     ],
// //   ),
// // ),
// //       ),
// //     );
// //   }
// // }