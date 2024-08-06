import 'package:app/properties.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MyTextFieldWithValidation extends StatelessWidget {
  final TextEditingController controller;
  final String hintText;
  final bool obscureText;
  final IconData icon;
  final bool hasError;

  const MyTextFieldWithValidation({
    super.key,
    required this.controller,
    required this.obscureText,
    required this.hintText,
    required this.icon,
    this.hasError = false,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextField(
          obscureText: obscureText,
          controller: controller,
          decoration: InputDecoration(
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(
                  width: 1,
                  color: hasError ? Colors.red : const Color(primaryColor)),
              borderRadius: BorderRadius.circular(5.r),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(
                width: 2,
                color: hasError ? Colors.red : const Color(primaryColor),
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
            contentPadding:
                EdgeInsets.symmetric(horizontal: 20.w, vertical: 15.h),
            hintStyle: const TextStyle(
                color: Color(textStroke), fontFamily: "Poppins"),
            focusColor: const Color(textStroke),
          ),
        ),
        if (hasError)
          Align(
            alignment: Alignment.centerLeft,
            child: Text(
              'Please enter a valid email',
              style: TextStyle(
                  color: Colors.red, fontFamily: "Poppins", fontSize: 12.sp),
            ),
          )
      ],
    );
  }
}
