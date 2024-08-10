// import the custom widgets
import 'package:app/components/usable_Button.dart';
import 'package:app/components/mpinObjects.dart';
import 'package:app/home/home_menu.dart';
import 'package:app/properties.dart';
import 'package:app/setup/signin.dart';
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
  bool isPinVisible = true;

  void navigationBottomMenu() {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => const HomeMenu()));
  }

  void handleNumButtonPress(int number) {
    setState(() {
      if (enteredPin.length < 4) {
        enteredPin += number.toString();
        if (enteredPin.length == 4) {
          navigationBottomMenu();
        }
      }
    });
  }

  void handleResetBackspace(String action) {
    setState(() {
      if (action == 'reset') {
        enteredPin = '';
      } else if (action == 'backspace') {
        enteredPin = enteredPin.isNotEmpty
            ? enteredPin.substring(0, enteredPin.length - 1)
            : enteredPin;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
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
        leading: backArrowButton(context, const Signin()),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 25.w, vertical: 25.h),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                SizedBox(height: 120.h),
                Column(
                  children: [
                    Text(
                      'Enter your MPIN',
                      style: TextStyle(
                        fontSize: 16.sp,
                        fontFamily: "Poppins",
                        color: const Color(textSubtitle),
                      ),
                    ),
                    SizedBox(height: 10.h),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: List.generate(4, (index) {
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
                                      color: const Color(textLight),
                                    ),
                                  ),
                                )
                              : null,
                        );
                      }),
                    ),
                    //  VISIBILITY TOGGLE BUTTON
                    // IconButton(
                    //     onPressed: () {
                    //       setState(() {
                    //         isPinVisible = !isPinVisible;
                    //       });
                    //     },
                    //     icon: Icon(isPinVisible
                    //         ? Icons.visibility_off
                    //         : Icons.visibility)),
                  ],
                ),
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
                        decoration: BoxDecoration(
                          color: const Color(foregroundColor),
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(50.r),
                            topRight: Radius.circular(50.r),
                          ),
                        ),
                        child: Padding(
                          padding: EdgeInsets.symmetric(vertical: 16.h),
                          child: Wrap(
                            children: [
                              Column(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  colMpin(
                                      context, 1, 2, 3, handleNumButtonPress),
                                  colMpin(
                                      context, 4, 5, 6, handleNumButtonPress),
                                  colMpin(
                                      context, 7, 8, 9, handleNumButtonPress),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      TextButton(
                                        style: ButtonStyle(
                                          fixedSize: WidgetStateProperty.all(
                                            const Size(70, 70),
                                          ),
                                        ),
                                        onPressed: () =>
                                            setState(() => enteredPin = ''),
                                        child: Text(
                                          'Reset',
                                          style: TextStyle(
                                            fontSize: 13.sp,
                                            color: const Color(textColor),
                                          ),
                                        ),
                                      ),
                                      SizedBox(width: 20.w),
                                      numButton(
                                          context, 0, handleNumButtonPress),
                                      SizedBox(width: 20.w),
                                      TextButton(
                                        style: ButtonStyle(
                                          fixedSize: WidgetStateProperty.all(
                                            const Size(70, 70),
                                          ),
                                        ),
                                        onPressed: () => setState(() =>
                                            enteredPin = enteredPin.isNotEmpty
                                                ? enteredPin.substring(
                                                    0, enteredPin.length - 1)
                                                : enteredPin),
                                        child: SvgPicture.asset(
                                          height: 30.h,
                                          width: 30.w,
                                          "assets/Icons/backspace.svg",
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(height: 50.h),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: [
                                      Text(
                                        'Help Center',
                                        style: TextStyle(
                                          fontFamily: "Poppins",
                                          fontSize: 12.sp,
                                          color: const Color(textSubtitle),
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                      Text(
                                        'Forgot MPIN?',
                                        style: TextStyle(
                                          fontFamily: "Poppins",
                                          fontSize: 12.sp,
                                          color: const Color(textSubtitle),
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    );
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8.r),
                      color: const Color(primaryColor),
                    ),
                    padding:
                        EdgeInsets.symmetric(horizontal: 15.w, vertical: 16.h),
                    child: Column(
                      children: [
                        SvgPicture.asset(
                          width: 40.h,
                          height: 40.h,
                          "assets/Icons/MpinIcon.svg",
                        ),
                        Text(
                          'MPIN Login',
                          style: TextStyle(
                            fontSize: 9.sp,
                            fontFamily: "Poppins",
                            color: const Color(textLight),
                            fontWeight: FontWeight.w500,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 50.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text(
                      'Help Center',
                      style: TextStyle(
                        fontFamily: "Poppins",
                        fontSize: 12.sp,
                        color: const Color(textSubtitle),
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Text(
                      'Forgot MPIN?',
                      style: TextStyle(
                        fontFamily: "Poppins",
                        fontSize: 12.sp,
                        color: const Color(textSubtitle),
                        fontWeight: FontWeight.w500,
                      ),
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
