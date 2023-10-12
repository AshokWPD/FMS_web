import 'package:flutter/material.dart';
import 'package:fms_web/Screens/sales/des_sales.dart';
import 'package:fms_web/Screens/sales/mob_sales.dart';
import 'package:fms_web/Screens/sales/tab_sales.dart';
import 'package:fms_web/constants/primary.dart';
import 'package:fms_web/constants/responsive-page.dart';

class sales_page extends StatefulWidget {
  const sales_page({super.key});

  @override
  State<sales_page> createState() => _sales_pageState();
}

class _sales_pageState extends State<sales_page> {
  @override
  Widget build(BuildContext context) {
    return Responsive(
      mobile: mob_slaes(), 
      tablet: tab_sales(), 
      desktop: des_sales(pageNo: 1,));

  }}