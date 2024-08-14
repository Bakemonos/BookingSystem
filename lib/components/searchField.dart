import 'package:app/properties.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MySearchField extends StatefulWidget {
  final TextEditingController? controller;

  final String textHint;
  final String icon;
  const MySearchField(
      {super.key, this.controller, required this.textHint, required this.icon});

  @override
  State<MySearchField> createState() => _MySearchFieldState();
}

class _MySearchFieldState extends State<MySearchField> {
  bool obscureText = true;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: 40.h,
          child: TextFormField(
            controller: widget.controller,
            decoration: InputDecoration(
              filled: true,
              fillColor: const Color(foregroundColor),
              floatingLabelBehavior: FloatingLabelBehavior.never,
              suffixIcon: Padding(
                padding: EdgeInsets.only(right: 20.w),
                child: SvgPicture.asset(
                  width: 24.w,
                  widget.icon,
                  color: const Color(primaryColor),
                ),
              ),
              contentPadding: EdgeInsets.only(
                left: 20.w,
              ),
              labelText: widget.textHint,
              labelStyle: TextStyle(
                fontSize: 14.sp,
                fontFamily: "Montserrat",
                fontWeight: FontWeight.w400,
                color: const Color(primaryColor),
              ),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(30.r),
                borderSide: BorderSide.none,
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(30.r),
                borderSide: BorderSide.none,
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(30.r),
                borderSide: BorderSide.none,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
