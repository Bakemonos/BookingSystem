// custom_widgets.dart
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

// Example usage of colMpin

Widget numButton(
    BuildContext context, int number, void Function(int) onPressed) {
  return TextButton(
    style: ButtonStyle(
      fixedSize: WidgetStateProperty.all(const Size(70, 70)),
      alignment: Alignment.center,
    ),
    onPressed: () => onPressed(number),
    child: Text(
      textAlign: TextAlign.center,
      number.toString(),
      style: TextStyle(
        fontSize: 24.sp,
        color: const Color(0xFF000000), // Replace with your text color
        fontFamily: "Poppins",
      ),
    ),
  );
}

Widget colMpin(
    BuildContext context, int n1, int n2, int n3, Function(int) onPressed) {
  return Column(
    children: [
      SizedBox(height: 10.h),
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          numButton(context, n1, onPressed),
          SizedBox(width: 20.w),
          numButton(context, n2, onPressed),
          SizedBox(width: 20.w),
          numButton(context, n3, onPressed),
        ],
      ),
    ],
  );
}
