import 'package:flutter/material.dart';
import 'package:fms_web/Screens/purchese/des_perchase.dart';
import 'package:fms_web/Screens/purchese/mob_perchase.dart';
import 'package:fms_web/Screens/purchese/tab.perchase.dart';
import 'package:fms_web/constants/primary.dart';
import 'package:fms_web/constants/responsive-page.dart';

class purchese_page extends StatefulWidget {
  const purchese_page({super.key});

  @override
  State<purchese_page> createState() => _purchese_pageState();
}

class _purchese_pageState extends State<purchese_page> {
  @override
  Widget build(BuildContext context) {
    return Responsive(
      mobile: mob_perchase(),
       tablet: tab_perhace(),
        desktop: des_perchase());
  }
}