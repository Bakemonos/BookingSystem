import 'package:app/properties.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MyRegisterField extends StatelessWidget {
  final String hintText;
  final String textTitle;

  const MyRegisterField(
      {super.key, required this.hintText, required this.textTitle});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          alignment: Alignment.centerLeft,
          child: Text(
            textTitle,
            style: TextStyle(
                fontSize: 14.sp,
                color: const Color(textColor),
                fontFamily: "Poppins"),
          ),
        ),
        SizedBox(
          height: 5.h,
        ),
        TextField(
          decoration: InputDecoration(
              enabledBorder: OutlineInputBorder(
                borderSide: const BorderSide(
                  width: 1,
                  color: Color(textSubtitle),
                ),
                borderRadius: BorderRadius.circular(5.r),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: const BorderSide(
                  width: 1,
                  color: Color(primaryColor),
                ),
                borderRadius: BorderRadius.circular(5.r),
              ),
              hintStyle: const TextStyle(
                color: Color(textStroke),
              ),
              hintText: hintText,
              contentPadding:
                  EdgeInsets.symmetric(horizontal: 20.w, vertical: 15.h)),
        ),
        SizedBox(
          height: 10.h,
        ),
      ],
    );
  }
}
