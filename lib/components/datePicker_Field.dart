import 'package:app/properties.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class MyDatePicker extends StatefulWidget {
  const MyDatePicker({super.key});

  @override
  State<MyDatePicker> createState() => _MyDatePickerState();
}

class _MyDatePickerState extends State<MyDatePicker> {
  final TextEditingController _dateController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          alignment: Alignment.centerLeft,
          child: Text(
            'Date of Birth',
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
          controller: _dateController,
          decoration: InputDecoration(
              enabledBorder: OutlineInputBorder(
                borderSide:
                    const BorderSide(width: 1, color: Color(textSubtitle)),
                borderRadius: BorderRadius.circular(5.r),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: const BorderSide(
                  width: 1,
                  color: Color(primaryColor),
                ),
                borderRadius: BorderRadius.circular(5.r),
              ),
              hintStyle: const TextStyle(color: Color(textStroke)),
              suffixIcon: Padding(
                padding: EdgeInsets.only(right: 20.w),
                child: SvgPicture.asset(
                  "assets/Icons/calendar.svg",
                  fit: BoxFit.scaleDown,
                ),
              ),
              hintText: 'Date of Birth',
              contentPadding:
                  EdgeInsets.symmetric(horizontal: 20.w, vertical: 15.h)),
          readOnly: true,
          onTap: () {
            _selectDate();
          },
        ),
      ],
    );
  }

  Future<void> _selectDate() async {
    DateTime? picked = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2000),
      lastDate: DateTime(2100),
    );
    if (picked != null) {
      setState(() {
        _dateController.text = picked.toString().split(" ")[0];
      });
    }
  }
}
