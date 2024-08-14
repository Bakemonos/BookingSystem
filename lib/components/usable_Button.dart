import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

void navigatorUser(BuildContext context, Widget page) {
  Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => page),
  );
}

Widget backArrowButton(BuildContext context, Widget targetPage) {
  return IconButton(
    onPressed: () {
      navigatorUser(context, targetPage);
    },
    icon: SvgPicture.asset(
      width: 24.w,
      'assets/Icons/backArrow.svg',
    ),
  );
}

forward(BuildContext context, Widget destinationScreen) {
  return Navigator.push(
      context, MaterialPageRoute(builder: (context) => destinationScreen));
}

back(BuildContext context, Widget destinationScreen) {
  return Navigator.push(
      context, MaterialPageRoute(builder: (context) => destinationScreen));
}
