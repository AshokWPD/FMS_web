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


class Nav_bar extends StatefulWidget {
   Nav_bar({super.key, });

  @override
  State<Nav_bar> createState() => _Nav_barState();
}

class _Nav_barState extends State<Nav_bar> {
  int _selectedIndex = 0;
  PageController controller = PageController();
  final List<Widget> _pages = [
    const DashBoard_page(),
  const purchese_page(pageNo: 1,),
  const sales_page(pageNo: 1,),
  const ship_page(),
  const Credit_page(pageNo: 1,),
  const enquiry_page(pageNo: 1,)
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
    bool isDesktop = MediaQuery.of(context).size.width >= 1100;
    bool istablet = MediaQuery.of(context).size.width >= 800;
    bool ismobile = MediaQuery.of(context).size.width < 800;
 double tabIconsize=21;
    double tabTextsiz=9;
     double desIconsize=20;
    double desTextsiz=13;
     double mobIconsize=29;
    double mobTextsiz=8;
    var iconcolor=Colors.white;
    var backicon=Colors.grey;
    List<BottomBarItem> navItem=[
       BottomBarItem(
                        icon:  Icon(Icons.dashboard_customize_outlined,
                        size :isDesktop?desIconsize:istablet?tabIconsize:mobIconsize,
                        color:iconcolor),
                        title:  Text('DASHBOARD',style: TextStyle(
                          fontSize:isDesktop?desTextsiz:istablet?tabTextsiz:mobTextsiz,
                          color:iconcolor ),),
                        backgroundColor: backicon,
                        selectedIcon:  Icon(Icons.dashboard_customize_outlined,
                        size :isDesktop?desIconsize:istablet?tabIconsize:mobIconsize,
                        color:iconcolor),
                      ),
                      BottomBarItem(
                        icon:  Icon(Icons.shopping_cart_sharp,
                        size :isDesktop?desIconsize:istablet?tabIconsize:mobIconsize,
                        color:iconcolor),
                        title:  Text('PURCHASE',style: TextStyle(
                          fontSize:isDesktop?desTextsiz:istablet?tabTextsiz:mobTextsiz,
                          color:iconcolor),),
                        backgroundColor: backicon,
                       selectedIcon:Icon(Icons.shopping_cart_sharp,
                        size :isDesktop?desIconsize:istablet?tabIconsize:mobIconsize,
                       color:iconcolor),
                      ),
                      BottomBarItem(
                        icon:  Icon(Icons.store_sharp,
                        size :isDesktop?desIconsize:istablet?tabIconsize:mobIconsize,
                        color:iconcolor),
                        title:  Text('SALES',style: TextStyle(
                          fontSize:isDesktop?desTextsiz:istablet?tabTextsiz:mobTextsiz,
                          color:iconcolor),),
                        backgroundColor: backicon,
                        selectedIcon: Icon(Icons.store_sharp,
                        size :isDesktop?desIconsize:istablet?tabIconsize:mobIconsize,
                        color:iconcolor),
                      ),
                      BottomBarItem(
                        icon:  Icon(Icons.fire_truck_sharp,
                        size :isDesktop?desIconsize:istablet?tabIconsize:mobIconsize,
                        color:iconcolor),
                        title:  Text('SHIPMENT',style: TextStyle(
                          fontSize:isDesktop?desTextsiz:istablet?tabTextsiz:mobTextsiz,
                          color:iconcolor),),
                        backgroundColor: backicon,
                        selectedIcon: Icon(Icons.fire_truck_sharp,
                        size :isDesktop?desIconsize:istablet?tabIconsize:mobIconsize,
                        color:iconcolor),
                      ),
                      BottomBarItem(
                        icon:  Icon(Icons.attach_money_sharp,
                        size :isDesktop?desIconsize:istablet?tabIconsize:mobIconsize,
                        color:iconcolor),
                        title:  Text('CREDIT',style: TextStyle(
                          fontSize:isDesktop?desTextsiz:istablet?tabTextsiz:mobTextsiz,
                          color:iconcolor),),
                        backgroundColor: backicon,
                        selectedIcon:  Icon(Icons.attach_money_sharp,
                        size :isDesktop?desIconsize:istablet?tabIconsize:mobIconsize,
                        color:iconcolor),
                      ),
                      BottomBarItem(
                        icon:  Icon(Icons.query_stats,
                        size :isDesktop?desIconsize:istablet?tabIconsize:mobIconsize,
                        color:iconcolor),
                        title:  Text('ENQUIRY',style: TextStyle(
                          fontSize:isDesktop?desTextsiz:istablet?tabTextsiz:mobTextsiz,
                          color:iconcolor),),
                        backgroundColor: backicon,
                        selectedIcon:  Icon(Icons.query_stats,
                        size :isDesktop?desIconsize:istablet?tabIconsize:mobIconsize,
                        color:iconcolor),
                      ),
    ];
    print("width :  $width");
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Column(
          children: [
            ismobile?
            Expanded(child: _pages[_selectedIndex]):const SizedBox(height: 0.0001,),
            Align(
           alignment:isDesktop? Alignment.topCenter:istablet?Alignment.topCenter:Alignment.bottomCenter,
              child: Container(
                width: width,
                height:ismobile?65: 50,
                decoration: BoxDecoration(
                    boxShadow: [boxshadow],
                  color: Colors.black
                ),
                child:ismobile?StylishBottomBar(
                   backgroundColor: Colors.black,
                  option: AnimatedBarOptions(
                    barAnimation: BarAnimation.liquid,
                    iconStyle: IconStyle.animated,
                    opacity: 0.3,
                    inkColor: Colors.white,
                    
                  ),
                  items: navItem,
                  hasNotch: true,
                  currentIndex: _selectedIndex,
                  onTap: (index) {
                    setState(() {
                      _selectedIndex = index;
                    });
                  },
                ): Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      height:50, 
                      width:width*0.5,// Adjust the height of the navigation bar
                      child: StylishBottomBar(
                        
                        // elevation: 0,
                         backgroundColor: Colors.black,
                        option:isDesktop?
                        BubbleBarOptions(
                          barStyle: BubbleBarStyle.horizotnal,
                          bubbleFillStyle: BubbleFillStyle.fill,
                          // opacity: 0.3,
                           unselectedIconColor: Colors.white,
                          inkColor: Colors.white,
                        ):BubbleBarOptions(
                          iconSize: 20,
                          barStyle: BubbleBarStyle.vertical,
                          bubbleFillStyle: BubbleFillStyle.fill,
                          // opacity: 0.3,
                          unselectedIconColor: Colors.black,
                          inkColor: Colors.black,
                        ),
                        // AnimatedBarOptions(
                        //   iconSize: 32,
                        //   barAnimation: BarAnimation.liquid,
                        //   iconStyle: IconStyle.animated,
                        //   opacity: 0.3,
                          
                        // ),
                         items: navItem,
                        hasNotch: true,
                        currentIndex: _selectedIndex,
                        onTap: (index) {
                          setState(() {
                            _selectedIndex = index;
                          });
                        },
                      ),
                    ),
                    
                  ],
                )
              ),
            ),
        isDesktop||istablet?
                Expanded(child: _pages[_selectedIndex]):const SizedBox(height: 0.0001,)
        
          ],
        ),
      ),
    );
  }
}