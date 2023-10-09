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
class BottomPage extends StatefulWidget {
  const BottomPage({Key? key});

  @override
  State<BottomPage> createState() => _BottomPageState();
}

class _BottomPageState extends State<BottomPage> {
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
    final width = MediaQuery.of(context).size.width;
    print("width :::::::::::::  $width");
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
    
        body: Stack(
          children: [
            _pages[_selectedIndex], // Your main content
            Align(
           alignment: Alignment.topCenter,
           
              child: Padding(
                padding: const EdgeInsets.only(top: 20),
                child: ClipRRect(
                      borderRadius: BorderRadius.all(
                    Radius.circular(16.0),
                  ),
                  child: Container(
                    decoration: BoxDecoration(
                  color: Colors.white, // Customize the background color
                      borderRadius: BorderRadius.circular(20)),
                    height: 55, 
                    width: 900,// Adjust the height of the navigation bar
                    child: StylishBottomBar(
                      option: BubbleBarOptions(
                        barStyle: BubbleBarStyle.horizotnal,
                        bubbleFillStyle: BubbleFillStyle.fill,
                        opacity: 0.3,
                      ),
                      items: [
                        BottomBarItem(
                          icon: const Icon(Icons.dashboard_customize_outlined),
                          title: const Text('DASHBOARD'),
                          backgroundColor: pricolor,
                          selectedIcon: Image.asset("assets/images/dashboard.png",scale: 18,),
                        ),
                        BottomBarItem(
                          icon: const Icon(Icons.shopping_cart_sharp),
                          title: const Text('PURCHASE'),
                          backgroundColor: pricolor,
                         selectedIcon: Image.asset("assets/images/shopping-cart.png",scale: 18,),

                        ),
                        BottomBarItem(
                          icon: const Icon(Icons.store_sharp),
                          title: const Text('SALES'),
                          backgroundColor: pricolor,
                          selectedIcon: Image.asset("assets/images/saless.png",scale: 18,),
                        ),
                        BottomBarItem(
                          icon: const Icon(Icons.fire_truck_sharp),
                          title: const Text('SHIPMENT'),
                          backgroundColor: pricolor,
                          selectedIcon: Image.asset("assets/images/dump-truck.png",scale: 18,),
                        ),
                        BottomBarItem(
                          icon: const Icon(Icons.attach_money_sharp),
                          title: const Text('CREDIT'),
                          backgroundColor: pricolor,
                          selectedIcon: Image.asset("assets/images/credit-card.png",scale: 18,),
                        ),
                        BottomBarItem(
                          icon: const Icon(Icons.query_stats),
                          title: const Text('ENQUIRY'),
                          backgroundColor: pricolor,
                          selectedIcon: Image.asset("assets/images/enquiry.png",scale: 18,),
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