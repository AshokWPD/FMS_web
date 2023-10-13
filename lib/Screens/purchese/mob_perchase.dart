// import 'package:flutter/material.dart';
// import 'package:fms_web/Screens/purchese/des_perchase.dart';
// import 'package:fms_web/Screens/purchese/purchase_Management/voucher_input.dart';
// import 'package:fms_web/constants/primary.dart';

// class mob_perchase extends StatefulWidget {
//     final int pageNo;
//   const mob_perchase({super.key, required this.pageNo});

//   @override
//   State<mob_perchase> createState() => _mob_perchaseState();
// }

// class _mob_perchaseState extends State<mob_perchase> {

//   List<Widget> _pages = [
//   perchese_voucher(),
//   perchese_voucher(),
//   perchese_voucher()
  
//   ];
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: Scaffold(
//         appBar: AppBar(
          
//         ),

// body: Container(
//  child: _pages[widget.pageNo],
// ),
// drawer: myDrawer(
//           titleone: "P U R C H A S E", titletwo: "V O U C H E R", titlethree: "H I S T O R Y", Drawerimage: 'assets/images/shopping-cart.png', pageone: des_perchase(pageNo: 2), pagetwo: null,),
//       ),
//     );
//   }
// }