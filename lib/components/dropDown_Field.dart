import 'package:app/properties.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

// A custom widget for a dropdown field
class MyDropDownField extends StatefulWidget {
  final String textTitle;
  final List<String> items; // Add a parameter to accept items for the dropdown

  const MyDropDownField({
    super.key,
    required this.textTitle,
    required this.items, // Initialize the items parameter
  });

  @override
  _MyDropDownFieldState createState() => _MyDropDownFieldState();
}

class _MyDropDownFieldState extends State<MyDropDownField> {
  String valueChoose = "Select"; // Default value

  // Method to generate DropdownMenuItem list
  List<DropdownMenuItem<String>> getDropdownItems() {
    return widget.items.map((String item) {
      return DropdownMenuItem<String>(
        value: item,
        child: Text(
          item,
          style: TextStyle(
            fontSize: 14.sp,
            fontFamily: "Poppins",
            color: const Color(textStroke),
          ),
        ),
      );
    }).toList();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          alignment: Alignment.centerLeft,
          child: Text(
            widget.textTitle,
            style: TextStyle(
              fontSize: 14.sp,
              color: const Color(textColor),
              fontFamily: "Poppins",
            ),
          ),
        ),
        SizedBox(
          height: 5.h,
        ),
        Container(
          alignment: Alignment.center,
          height: 48.h,
          width: double.infinity,
          decoration: BoxDecoration(
            border: Border.all(width: 1, color: const Color(textSubtitle)),
            borderRadius: BorderRadius.circular(5.r),
          ),
          child: DropdownButtonHideUnderline(
            child: DropdownButton<String>(
              padding: EdgeInsets.symmetric(horizontal: 20.w),
              iconSize: 24.w,
              dropdownColor: const Color(foregroundColor),
              borderRadius: BorderRadius.circular(8.r),
              value: valueChoose,
              items: getDropdownItems(),
              icon: const Icon(
                Icons.arrow_drop_down,
                color: Color(textColor),
              ),
              isExpanded: true,
              style: const TextStyle(color: Color(textColor)),
              onChanged: (newValue) {
                setState(() {
                  valueChoose = newValue!;
                });
              },
            ),
          ),
        ), SizedBox(
                    height: 10.h,
                  ),
      ],
    );
  }
}
