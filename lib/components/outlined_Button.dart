import 'package:app/properties.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MyOutlinedButton extends StatelessWidget {
  final Function() onPressed;
  final String text;
  const MyOutlinedButton(
      {super.key, required this.onPressed, required this.text});

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      style: OutlinedButton.styleFrom(
        minimumSize: Size(double.infinity, 48.h),
        side: const BorderSide(
          color: Color(primaryColor),
          width: 1,
        ),
      ),
      onPressed: onPressed,
      child: Text(
        text,
        style: TextStyle(
          color: const Color(primaryColor),
          fontSize: 16.sp,
          fontFamily: "Poppins",
          fontWeight: FontWeight.normal,
        ),
      ),
    );
  }
}
