import 'package:flutter/material.dart';
import 'package:fms_web/constants/responsive-page.dart';
import 'package:fms_web/utils/Navigation/des_nav.dart';
import 'package:fms_web/utils/Navigation/mob_nav.dart';
import 'package:fms_web/utils/Navigation/tab_nav.dart';

class Nav_bar extends StatelessWidget {
  const Nav_bar({super.key});

  @override
  Widget build(BuildContext context) {
    return Responsive(mobile: mob_Nav(), tablet: tab_Nav(), desktop: des_Nav());
  }
}