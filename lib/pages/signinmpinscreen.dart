import 'package:app/pages/signin.dart';
import 'package:app/properties.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Signinmpinscreen extends StatefulWidget {
  const Signinmpinscreen({super.key});

  @override
  State<Signinmpinscreen> createState() => _SigninState();
}

class _SigninState extends State<Signinmpinscreen> {
  String enteredPin = '';
  bool isPinVisible = false;

  Widget numButton(int number) {
    return TextButton(
      onPressed: () {
        setState(() {
          if (enteredPin.length < 4) {
            enteredPin += number.toString();
          }
        });
      },
      child: Text(
        textAlign: TextAlign.center,
        number.toString(),
        style: TextStyle(
            fontSize: 24.sp,
            color: const Color(textColor),
            fontFamily: "Poppins"),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    // double screenWidth = MediaQuery.of(context).size.width;
    // double screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: const Color(backgroundColor),
      appBar: AppBar(
        backgroundColor: const Color(foregroundColor),
        centerTitle: true,
        automaticallyImplyLeading: false,
        title: Text(
          'Sign In',
          style: TextStyle(fontSize: 20.sp, fontFamily: "Poppins"),
        ),
        leading: IconButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const Signin()));
            },
            icon: SvgPicture.asset("assets/Icons/arrow.svg")),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 25.w, vertical: 25.h),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                SizedBox(
                  height: 120.h,
                ),

                Column(
                  children: [
                    Text(
                      'Enter you MPIN',
                      style: TextStyle(
                          fontSize: 16.sp,
                          fontFamily: "Poppins",
                          color: const Color(textSubtitle)),
                    ),
                    SizedBox(
                      height: 10.h,
                    ),

                    // MPIN CODE HERE
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: List.generate(
                        4,
                        (index) {
                          return Container(
                            margin: const EdgeInsets.all(6.0),
                            width: isPinVisible ? 50 : 18,
                            height: isPinVisible ? 50 : 18,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10.r),
                              color: index < enteredPin.length
                                  ? isPinVisible
                                      ? const Color(primaryColor)
                                      : const Color(primaryColor)
                                  : CupertinoColors.activeBlue.withOpacity(0.1),
                            ),
                            child: isPinVisible && index < enteredPin.length
                                ? Center(
                                    child: Text(
                                      enteredPin[index],
                                      style: TextStyle(
                                          fontSize: 16.sp,
                                          fontFamily: "Poppins",
                                          color: const Color(textLight)),
                                    ),
                                  )
                                : null,
                          );
                        },
                      ),
                    ),

                    // VISIBILITY TOGGLE BUTTON
                    // IconButton(
                    //     onPressed: () {
                    //       setState(() {
                    //         isPinVisible = !isPinVisible;
                    //       });
                    //     },
                    //     icon: Icon(isPinVisible
                    //         ? Icons.visibility_off
                    //         : Icons.visibility)),

                    SizedBox(
                      width: 100.w,
                      height: 20.h,
                      child: const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [],
                      ),
                    ),
                  ],
                ),
                // SPACE BETWEEN
              ],
            ),
            Column(
              children: [
                GestureDetector(
                  onTap: () {
                    showModalBottomSheet(
                      backgroundColor: Colors.transparent,
                      enableDrag: false,
                      barrierColor: Colors.transparent,
                      context: context,
                      builder: (context) => Container(
                        height: 400.h,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: const Color(foregroundColor),
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(50.r),
                            topRight: Radius.circular(50.r),
                          ),
                        ),
                        // (index) => numButton();

                        child: Column(
                          children: [
                            SizedBox(height: 40.h),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                numButton(1),
                                SizedBox(width: 30.w),
                                numButton(2),
                                SizedBox(width: 30.w),
                                numButton(3),
                              ],
                            ),
                            SizedBox(height: 20.h),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                numButton(4),
                                SizedBox(width: 30.w),
                                numButton(5),
                                SizedBox(width: 30.w),
                                numButton(6),
                              ],
                            ),
                            SizedBox(height: 20.h),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                numButton(7),
                                SizedBox(width: 30.w),
                                numButton(8),
                                SizedBox(width: 30.w),
                                numButton(9),
                              ],
                            ),
                            SizedBox(height: 20.h),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                SizedBox(width: 30.w),
                                TextButton(
                                  onPressed: () =>
                                      setState(() => enteredPin = ''),
                                  child: Padding(
                                      // W8 // 13H
                                      padding:
                                          EdgeInsets.symmetric(vertical: 10.h),
                                      child: Text(
                                        'Reset',
                                        style: TextStyle(
                                            fontSize: 13.sp,
                                            color: const Color(textColor)),
                                      )),
                                ),
                                SizedBox(width: 30.w),
                                numButton(0),
                                SizedBox(width: 30.w),
                                TextButton(
                                  onPressed: () => setState(() => enteredPin =
                                      enteredPin.isNotEmpty
                                          ? enteredPin.substring(
                                              0, enteredPin.length - 1)
                                          : enteredPin),
                                  child: Padding(
                                    padding:
                                        EdgeInsets.symmetric(vertical: 8.h),
                                    child: SvgPicture.asset(
                                      height: 24.h,
                                      width: 24.w,
                                      "assets/Icons/backspace.svg",
                                    ),
                                  ),
                                ),
                                SizedBox(width: 30.w),
                              ],
                            ),
                            SizedBox(
                              height: 30.h,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Text(
                                  'Help Center',
                                  style: TextStyle(
                                      fontFamily: "Poppins",
                                      fontSize: 12.sp,
                                      color: const Color(textSubtitle),
                                      fontWeight: FontWeight.w500),
                                ),
                                Text(
                                  'Forgot MPIN?',
                                  style: TextStyle(
                                      fontFamily: "Poppins",
                                      fontSize: 12.sp,
                                      color: const Color(textSubtitle),
                                      fontWeight: FontWeight.w500),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                  child: Container(
                    // H15 W20
                    padding:
                        EdgeInsets.symmetric(horizontal: 15.w, vertical: 20.h),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8.r),
                      color: const Color(primaryColor),
                    ),
                    child: Column(
                      children: [
                        SvgPicture.asset("assets/Icons/MpinIcon.svg"),
                        Text(
                          'MPIN Login',
                          style: TextStyle(
                              fontSize: 12.sp,
                              fontFamily: "Poppins",
                              color: const Color(textLight),
                              fontWeight: FontWeight.w500),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 50.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text(
                      'Help Center',
                      style: TextStyle(
                          fontFamily: "Poppins",
                          fontSize: 12.sp,
                          color: const Color(textSubtitle),
                          fontWeight: FontWeight.w500),
                    ),
                    Text(
                      'Forgot MPIN?',
                      style: TextStyle(
                          fontFamily: "Poppins",
                          fontSize: 12.sp,
                          color: const Color(textSubtitle),
                          fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
