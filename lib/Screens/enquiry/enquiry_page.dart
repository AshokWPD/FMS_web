import 'package:flutter/material.dart';
import 'package:fms_web/Screens/enquiry/des_enquiry.dart';
import 'package:fms_web/Screens/enquiry/mob_enquiry.dart';
import 'package:fms_web/Screens/enquiry/tab_enquiry.dart';
import 'package:fms_web/constants/primary.dart';
import 'package:fms_web/constants/responsive-page.dart';

class enquiry_page extends StatefulWidget {
  const enquiry_page({super.key});

  @override
  State<enquiry_page> createState() => _enquiry_pageState();
}

class _enquiry_pageState extends State<enquiry_page> {
  @override
  Widget build(BuildContext context) {
    return Responsive(mobile: mob_enquiry(), tablet: tab_enquiry(), desktop: des_enquiry(pageNo: 1,));
  }
}