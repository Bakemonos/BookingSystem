import 'package:app/components/text.dart';
import 'package:app/properties.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(backgroundColor),
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(100.h),
        child: ClipRRect(
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(30.r), // Adjust radius here
          ),
          child: AppBar(
            backgroundColor: const Color(foregroundColor),
            toolbarHeight: 100.h,
            automaticallyImplyLeading: false,
            title: Padding(
              padding: EdgeInsets.symmetric(horizontal: 5.w),
              child: Stack(
                children: [
                  Center(
                    child: MyText(
                      label: 'Dashboard',
                      size: 20.sp,
                      fontweight: FontWeight.w500,
                      color: const Color(textColor),
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerRight,
                    child: SvgPicture.asset(
                      'assets/Icons/QR.svg',
                      width: 24.w,
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
      body: Center(
        child: Text(
          'HOME',
          style: TextStyle(fontSize: 24.sp, color: const Color(textColor)),
        ),
      ),
    );
  }
}
