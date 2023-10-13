// import 'package:flutter/material.dart';
// import 'package:fms_web/Screens/Dashboard/dashboard_page.dart';
// import 'package:fms_web/Screens/credit/credit_page.dart';
// import 'package:fms_web/Screens/enquiry/enquiry_page.dart';
// import 'package:fms_web/Screens/purchese/purchese_page.dart';
// import 'package:fms_web/Screens/sales/sales_page.dart';
// import 'package:fms_web/Screens/ship/ship_page.dart';
// import 'package:fms_web/constants/primary.dart';
// import 'package:stylish_bottom_bar/model/bar_items.dart';
// import 'package:stylish_bottom_bar/stylish_bottom_bar.dart';


// class des_Nav extends StatefulWidget {
//   const des_Nav({Key? key});

//   @override
//   State<des_Nav> createState() => _des_NavState();
// }

// class _des_NavState extends State<des_Nav> {
//   int _selectedIndex = 0;
//   PageController controller = PageController();
//   List<Widget> _pages = [
//     DashBoard_page(),
//   purchese_page(),
//   sales_page(),
//   ship_page(),
//   Credit_page(),
//   enquiry_page()
//   ];

// void _onTabTapped(int index) {
//     setState(() {
//       _selectedIndex = index;
//     });
//   }

  
//   @override
//   Widget build(BuildContext context) {
//      final height = MediaQuery.of(context).size.height;
//     final width = MediaQuery.of(context).size.width;
//     bool isDesktop = MediaQuery.of(context).size.width >= 1100;
//     bool istablet = MediaQuery.of(context).size.width >= 800;
//     bool ismobile = MediaQuery.of(context).size.width < 800;
//  double tab_iconsize=21;
//     double tab_textsiz=9;
//      double des_iconsize=20;
//     double des_textsiz=13;
//      double mob_iconsize=29;
//     double mob_textsiz=8;
//     var iconcolor=Colors.white;
//     var backicon=Colors.grey;
//     List<BottomBarItem> nav_item=[
//        BottomBarItem(
//                         icon:  Icon(Icons.dashboard_customize_outlined,
//                         size :isDesktop?des_iconsize:istablet?tab_iconsize:mob_iconsize,
//                         color:iconcolor),
//                         title:  Text('DASHBOARD',style: TextStyle(
//                           fontSize:isDesktop?des_textsiz:istablet?tab_textsiz:mob_textsiz,
//                           color:iconcolor ),),
//                         backgroundColor: backicon,
//                         selectedIcon:  Icon(Icons.dashboard_customize_outlined,
//                         size :isDesktop?des_iconsize:istablet?tab_iconsize:mob_iconsize,
//                         color:iconcolor),
//                       ),
//                       BottomBarItem(
//                         icon:  Icon(Icons.shopping_cart_sharp,
//                         size :isDesktop?des_iconsize:istablet?tab_iconsize:mob_iconsize,
//                         color:iconcolor),
//                         title:  Text('PURCHASE',style: TextStyle(
//                           fontSize:isDesktop?des_textsiz:istablet?tab_textsiz:mob_textsiz,
//                           color:iconcolor),),
//                         backgroundColor: backicon,
//                        selectedIcon:Icon(Icons.shopping_cart_sharp,
//                         size :isDesktop?des_iconsize:istablet?tab_iconsize:mob_iconsize,
//                        color:iconcolor),
//                       ),
//                       BottomBarItem(
//                         icon:  Icon(Icons.store_sharp,
//                         size :isDesktop?des_iconsize:istablet?tab_iconsize:mob_iconsize,
//                         color:iconcolor),
//                         title:  Text('SALES',style: TextStyle(
//                           fontSize:isDesktop?des_textsiz:istablet?tab_textsiz:mob_textsiz,
//                           color:iconcolor),),
//                         backgroundColor: backicon,
//                         selectedIcon: Icon(Icons.store_sharp,
//                         size :isDesktop?des_iconsize:istablet?tab_iconsize:mob_iconsize,
//                         color:iconcolor),
//                       ),
//                       BottomBarItem(
//                         icon:  Icon(Icons.fire_truck_sharp,
//                         size :isDesktop?des_iconsize:istablet?tab_iconsize:mob_iconsize,
//                         color:iconcolor),
//                         title:  Text('SHIPMENT',style: TextStyle(
//                           fontSize:isDesktop?des_textsiz:istablet?tab_textsiz:mob_textsiz,
//                           color:iconcolor),),
//                         backgroundColor: backicon,
//                         selectedIcon: Icon(Icons.fire_truck_sharp,
//                         size :isDesktop?des_iconsize:istablet?tab_iconsize:mob_iconsize,
//                         color:iconcolor),
//                       ),
//                       BottomBarItem(
//                         icon:  Icon(Icons.attach_money_sharp,
//                         size :isDesktop?des_iconsize:istablet?tab_iconsize:mob_iconsize,
//                         color:iconcolor),
//                         title:  Text('CREDIT',style: TextStyle(
//                           fontSize:isDesktop?des_textsiz:istablet?tab_textsiz:mob_textsiz,
//                           color:iconcolor),),
//                         backgroundColor: backicon,
//                         selectedIcon:  Icon(Icons.attach_money_sharp,
//                         size :isDesktop?des_iconsize:istablet?tab_iconsize:mob_iconsize,
//                         color:iconcolor),
//                       ),
//                       BottomBarItem(
//                         icon:  Icon(Icons.query_stats,
//                         size :isDesktop?des_iconsize:istablet?tab_iconsize:mob_iconsize,
//                         color:iconcolor),
//                         title:  Text('ENQUIRY',style: TextStyle(
//                           fontSize:isDesktop?des_textsiz:istablet?tab_textsiz:mob_textsiz,
//                           color:iconcolor),),
//                         backgroundColor: backicon,
//                         selectedIcon:  Icon(Icons.query_stats,
//                         size :isDesktop?des_iconsize:istablet?tab_iconsize:mob_iconsize,
//                         color:iconcolor),
//                       ),
//     ];
//     print("width :  $width");
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: Scaffold(
//         body: Column(
//           children: [
//             Align(
              
//            alignment:isDesktop? Alignment.topCenter:istablet?Alignment.topCenter:Alignment.bottomCenter,
//               child: Container(
//                 width:ismobile?600: width,
//                 height:ismobile?65: 50,
//                 decoration: BoxDecoration(
//                     boxShadow: [boxshadow],
//                   color: Colors.black
//                 ),
//                 child:ismobile?StylishBottomBar(
//                   //  backgroundColor: pricolor,
//                   option: AnimatedBarOptions(
//                     barAnimation: BarAnimation.liquid,
//                     iconStyle: IconStyle.animated,
//                     opacity: 0.3,
//                     inkColor: Colors.black,
                    
//                   ),
//                   items: nav_item,
//                   hasNotch: true,
//                   currentIndex: _selectedIndex,
//                   onTap: (index) {
//                     setState(() {
//                       _selectedIndex = index;
//                     });
//                   },
//                 ): Row(
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   children: [
//                     Container(
                 
//                       height:50, 
//                       width:width*0.5,// Adjust the height of the navigation bar
//                       child: StylishBottomBar(
                        
//                         // elevation: 0,
//                          backgroundColor: Colors.black,
//                         option:isDesktop?
//                         BubbleBarOptions(
//                           barStyle: BubbleBarStyle.horizotnal,
//                           bubbleFillStyle: BubbleFillStyle.fill,
//                           // opacity: 0.3,
//                            unselectedIconColor: Colors.white,
//                           inkColor: Colors.white,
//                         ):BubbleBarOptions(
//                           iconSize: 20,
//                           barStyle: BubbleBarStyle.vertical,
//                           bubbleFillStyle: BubbleFillStyle.fill,
//                           // opacity: 0.3,
//                           unselectedIconColor: Colors.black,
//                           inkColor: Colors.black,
//                         ),
//                         // AnimatedBarOptions(
//                         //   iconSize: 32,
//                         //   barAnimation: BarAnimation.liquid,
//                         //   iconStyle: IconStyle.animated,
//                         //   opacity: 0.3,
                          
//                         // ),
//                          items: nav_item,
//                         hasNotch: true,
//                         currentIndex: _selectedIndex,
//                         onTap: (index) {
//                           setState(() {
//                             _selectedIndex = index;
//                           });
//                         },
//                       ),
//                     ),
                    
//                   ],
//                 )
//               ),
//             ),
        
//                 Expanded(child: _pages[_selectedIndex])
        
//           ],
//         ),
//       ),
//     );
//   }
// }