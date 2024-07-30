import 'package:app/Widgets/back_arrow.dart';
import 'package:app/pages/navigation_menu.dart';
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
  bool isPinVisible = false;

  void navigationBottomMenu() {
    Navigator.push(context,
        MaterialPageRoute(builder: (context) => const NavigationMenu()));
  }

  // MPIN VALIDATION
  Widget numButton(int number) {
    return TextButton(
      style: const ButtonStyle(alignment: Alignment.center),
      onPressed: () {
        setState(() {
          if (enteredPin.length < 4) {
            enteredPin += number.toString();
            if (enteredPin.length == 4) {
              navigationBottomMenu();
            }
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
        leading: backArrowButton(context, const Signin()),
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
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: const Color(foregroundColor),
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(50.r),
                            topRight: Radius.circular(50.r),
                          ),
                        ),
                        // (index) => numButton();

                        child: Padding(
                          padding: EdgeInsets.symmetric(vertical: 20.h),
                          child: Column(
                            children: [
                              const Spacer(
                                flex: 1,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  numButton(1),
                                  numButton(2),
                                  numButton(3),
                                ],
                              ),
                              const Spacer(
                                flex: 2,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  numButton(4),
                                  numButton(5),
                                  numButton(6),
                                ],
                              ),
                              const Spacer(
                                flex: 2,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  numButton(7),
                                  numButton(8),
                                  numButton(9),
                                ],
                              ),
                              const Spacer(
                                flex: 2,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  TextButton(
                                    onPressed: () =>
                                        setState(() => enteredPin = ''),
                                    child: Text(
                                      'Reset',
                                      style: TextStyle(
                                          fontSize: 13.sp,
                                          color: const Color(textColor)),
                                    ),
                                  ),
                                  numButton(0),
                                  TextButton(
                                    onPressed: () => setState(() => enteredPin =
                                        enteredPin.isNotEmpty
                                            ? enteredPin.substring(
                                                0, enteredPin.length - 1)
                                            : enteredPin),
                                    child: SvgPicture.asset(
                                      height: 24.h,
                                      width: 24.w,
                                      "assets/Icons/backspace.svg",
                                    ),
                                  ),
                                ],
                              ),
                              const Spacer(
                                flex: 3,
                              ),
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
                              const Spacer(
                                flex: 1,
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
                        EdgeInsets.symmetric(horizontal: 13.w, vertical: 18.h),
                    child: Column(
                      children: [
                        SvgPicture.asset(
                            width: 40.h,
                            height: 40.h,
                            "assets/Icons/MpinIcon.svg"),
                        Text(
                          'MPIN Login',
                          style: TextStyle(
                              fontSize: 9.sp,
                              fontFamily: "Poppins",
                              color: const Color(textLight),
                              fontWeight: FontWeight.w500),
                          textAlign: TextAlign.center,
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
