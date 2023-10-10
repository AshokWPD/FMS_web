import 'package:flutter/material.dart';
import 'package:fms_web/Screens/Dashboard/dashboard_page.dart';
import 'package:fms_web/Screens/credit/credit_page.dart';
import 'package:fms_web/Screens/enquiry/enquiry_page.dart';
import 'package:fms_web/Screens/purchese/purchese_page.dart';
import 'package:fms_web/Screens/sales/sales_page.dart';
import 'package:fms_web/Screens/ship/ship_page.dart';
import 'package:fms_web/constants/primary.dart';
import 'package:stylish_bottom_bar/model/bar_items.dart';
import 'package:stylish_bottom_bar/stylish_bottom_bar.dart';
class mob_Nav extends StatefulWidget {
  const mob_Nav({Key? key});

  @override
  State<mob_Nav> createState() => _mob_NavState();
}

class _mob_NavState extends State<mob_Nav> {
  int _selectedIndex = 0;
  PageController controller = PageController();
  List<Widget> _pages = [
    DashBoard_page(),
  purchese_page(),
  sales_page(),
  ship_page(),
  Credit_page(),
  enquiry_page()
  ];

void _onTabTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  

  @override
  
  Widget build(BuildContext context) {
     final height = MediaQuery.of(context).size.height;
    // final width = MediaQuery.of(context).size.width;
 double iconsize=15;
    double textsiz=8;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
    
        body: Stack(
          children: [
            _pages[_selectedIndex], // Your main content
            Align(
           alignment: Alignment.bottomCenter,
           
              child: Padding(
                padding: EdgeInsets.only(
                  bottom: 20),
                child: ClipRRect(
                      borderRadius: BorderRadius.all(
                    Radius.circular(16.0),
                  ),
                  child: Container(
                    decoration: BoxDecoration(
                  color: Colors.white, // Customize the background color
                      borderRadius: BorderRadius.circular(20)),
                    height:43, 
                    width:600,// Adjust the height of the navigation bar
                    child: StylishBottomBar(
                      option: AnimatedBarOptions(
                        barAnimation: BarAnimation.liquid,
                        iconStyle: IconStyle.animated,
                        opacity: 0.3,
                        
                      ),
                      items: [
                        BottomBarItem(
                          icon:  Icon(Icons.dashboard_customize_outlined,size :iconsize),
                          title:  Text('DASHBOARD',style: TextStyle(fontSize:textsiz ),),
                          backgroundColor: pricolor,
                          selectedIcon:  Icon(Icons.dashboard_customize_outlined,size : iconsize),
                        ),
                        BottomBarItem(
                          icon:  Icon(Icons.shopping_cart_sharp,size :iconsize,),
                          title:  Text('PURCHASE',style: TextStyle(fontSize:textsiz ),),
                          backgroundColor: pricolor,
                         selectedIcon:Icon(Icons.shopping_cart_sharp,size : iconsize,),
                        ),
                        BottomBarItem(
                          icon:  Icon(Icons.store_sharp,size : iconsize,),
                          title:  Text('SALES',style: TextStyle(fontSize:textsiz ),),
                          backgroundColor: pricolor,
                          selectedIcon: Icon(Icons.store_sharp,size : iconsize,),
                        ),
                        BottomBarItem(
                          icon:  Icon(Icons.fire_truck_sharp,size :iconsize,),
                          title:  Text('SHIPMENT',style: TextStyle(fontSize:textsiz ),),
                          backgroundColor: pricolor,
                          selectedIcon: Icon(Icons.fire_truck_sharp,size : iconsize,),
                        ),
                        BottomBarItem(
                          icon:  Icon(Icons.attach_money_sharp,size :iconsize),
                          title:  Text('CREDIT',style: TextStyle(fontSize:textsiz ),),
                          backgroundColor: pricolor,
                          selectedIcon:  Icon(Icons.attach_money_sharp,size : iconsize),
                        ),
                        BottomBarItem(
                          icon:  Icon(Icons.query_stats,size : iconsize),
                          title:  Text('ENQUIRY',style: TextStyle(fontSize:textsiz ),),
                          backgroundColor: pricolor,
                          selectedIcon:  Icon(Icons.query_stats,size :iconsize,),
                        ),
                      ],
                      hasNotch: true,
                      currentIndex: _selectedIndex,
                      onTap: (index) {
                        setState(() {
                          _selectedIndex = index;
                        });
                      },
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}