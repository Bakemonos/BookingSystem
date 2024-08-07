// custom_widgets.dart
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

Widget numButton(
    BuildContext context, int number, String enteredPin, Function onPressed) {
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

Widget colMpin(BuildContext context, int n1, int n2, int n3, String enteredPin,
    Function onPressed) {
  return Column(
    children: [
      SizedBox(height: 10.h),
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          numButton(context, n1, enteredPin, onPressed),
          SizedBox(width: 20.w),
          numButton(context, n2, enteredPin, onPressed),
          SizedBox(width: 20.w),
          numButton(context, n3, enteredPin, onPressed),
        ],
      ),
    ],
  );
}

Widget rolMpin(BuildContext context, String textTitleStart, int n0,
    String iconEnd, String enteredPin, Function onPressed) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      TextButton(
        style: ButtonStyle(
          fixedSize: WidgetStateProperty.all(const Size(70, 70)),
        ),
        onPressed: () => onPressed('reset'),
        child: Text(
          textTitleStart,
          style: TextStyle(
            fontSize: 13.sp,
            color: const Color(0xFF000000), // Replace with your text color
          ),
        ),
      ),
      SizedBox(width: 20.w),
      numButton(context, n0, enteredPin, onPressed),
      SizedBox(width: 20.w),
      TextButton(
        style: ButtonStyle(
          fixedSize: WidgetStateProperty.all(const Size(70, 70)),
        ),
        onPressed: () => onPressed('backspace'),
        child: SvgPicture.asset(
          height: 30.h,
          width: 30.w,
          "assets/Icons/$iconEnd",
        ),
      ),
    ],
  );
}
