import 'package:flutter/material.dart';
import 'package:fms_web/Screens/ship/des_ship.dart';
import 'package:fms_web/Screens/ship/mob_ship.dart';
import 'package:fms_web/Screens/ship/tab_ship.dart';
import 'package:fms_web/constants/primary.dart';
import 'package:fms_web/constants/responsive-page.dart';

class ship_page extends StatefulWidget {
  const ship_page({super.key});

  @override
  State<ship_page> createState() => _ship_pageState();
}

class _ship_pageState extends State<ship_page> {
  @override
  Widget build(BuildContext context) {
    return Responsive(mobile: mob_ship(), tablet: tab_ship(), desktop: des_ship(pageNo: 1,));
  }
}