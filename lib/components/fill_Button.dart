import 'package:app/properties.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MyButton extends StatelessWidget {
  final String textButton;
  final Function() onPressed;

  const MyButton(
      {super.key, required this.textButton, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: const Color(primaryColor),
        minimumSize: Size(double.infinity, 48.h), // Set width and height
      ),
      child: Text(
        textButton,
        style: TextStyle(
          color: const Color(textLight),
          fontSize: 16.sp,
          fontFamily: "Poppins",
          fontWeight: FontWeight.normal,
        ),
      ),
    );
  }
}
