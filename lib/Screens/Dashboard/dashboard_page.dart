import 'package:flutter/material.dart';
import 'package:fms_web/Screens/Dashboard/des_dash.dart';
import 'package:fms_web/Screens/Dashboard/mob_dash.dart';
import 'package:fms_web/Screens/Dashboard/tab_dash.dart';
import 'package:fms_web/constants/responsive-page.dart';
import 'package:fms_web/utils/Navigation/des_nav.dart';

class DashBoard_page extends StatelessWidget {
  const DashBoard_page({super.key});

  @override
  Widget build(BuildContext context) {
    return Responsive(mobile: mob_dash(), tablet: tab_dash(), desktop: des_dash());
  }
}