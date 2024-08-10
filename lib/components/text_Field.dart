import 'package:app/properties.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MyTextField extends StatelessWidget {
  final TextEditingController controller;
  final String hintText;
  final bool obscureText;
  final IconData icon;
  final bool read;

  const MyTextField(
      {super.key,
      required this.controller,
      required this.obscureText,
      required this.hintText,
      required this.icon,
      required this.read});

  @override
  Widget build(BuildContext context) {
    return TextField(
      readOnly: read,
      obscureText: obscureText,
      controller: controller,
      decoration: InputDecoration(
        enabledBorder: OutlineInputBorder(
          borderSide: const BorderSide(width: 1, color: Color(primaryColor)),
          borderRadius: BorderRadius.circular(5.r),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: const BorderSide(
            width: 1,
            color: Color(primaryColor),
          ),
          borderRadius: BorderRadius.circular(5.r),
        ),
        prefixIcon: Padding(
          padding: EdgeInsets.only(left: 20.w, right: 10.w),
          child: Icon(
            size: 24.w,
            icon,
            color: const Color(primaryColor),
          ),
        ),
        hintText: hintText,
        contentPadding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 15.h),
        hintStyle:
            const TextStyle(color: Color(textStroke), fontFamily: "Poppins"),
        focusColor: const Color(textStroke),
      ),
    );
  }
}
