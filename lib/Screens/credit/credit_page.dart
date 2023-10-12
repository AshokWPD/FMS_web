import 'package:flutter/material.dart';
import 'package:fms_web/Screens/credit/des_credit.dart';
import 'package:fms_web/Screens/credit/mob_credit.dart';
import 'package:fms_web/Screens/credit/tab_credit.dart';
import 'package:fms_web/constants/primary.dart';
import 'package:fms_web/constants/responsive-page.dart';

class Credit_page extends StatefulWidget {
  const Credit_page({super.key});

  @override
  State<Credit_page> createState() => _Credit_pageState();
}

class _Credit_pageState extends State<Credit_page> {
  @override
  Widget build(BuildContext context) {
    return Responsive(mobile: mob_credit(), tablet: tab_credit(), desktop: des_credit(pageNo: 1,));
  }
}