import 'package:app/components/searchField.dart';
import 'package:app/components/text.dart';
import 'package:app/components/usable_Button.dart';
import 'package:app/home/navigation_menu.dart';
import 'package:app/properties.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class Selectcategory extends StatefulWidget {
  const Selectcategory({super.key});

  @override
  State<Selectcategory> createState() => __selectCategoryState();
}

class __selectCategoryState extends State<Selectcategory> {
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
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Stack(
                    children: [
                      Align(
                          alignment: Alignment.centerLeft,
                          child:
                              backArrowButton(context, const NavigationMenu())),
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
                ],
              ),
            ),
          ),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 25.w),
        child: Column(
          children: [
            SizedBox(
              height: 20.h,
            ),
            const MySearchField(
                textHint: 'Search Category', icon: 'assets/Icons/search.svg')
          ],
        ),
      ),
    );
  }
}
