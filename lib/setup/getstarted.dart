import 'package:app/setup/signin.dart';
import 'package:app/setup/signup.dart';
import 'package:app/properties.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Getstarted extends StatefulWidget {
  const Getstarted({super.key});

  @override
  State<Getstarted> createState() => _GetstartedState();
}

class _GetstartedState extends State<Getstarted> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            width: double.infinity.w,
            'assets/Pictures/AppBackground.png',
            fit: BoxFit.contain,
          ),
          SizedBox(
            width: screenWidth.w,
            height: screenHeight.h,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  height: 430.h,
                  width: screenWidth.w,
                  decoration: BoxDecoration(
                    color: const Color(foregroundColor),
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(50.r), // Set your desired radius
                      topRight: Radius.circular(50.r),
                      // Set your desired radius
                    ),
                  ),
                  child: Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: 25.w, vertical: 25.h),
                    child: Column(
                      children: [
                        SizedBox(
                          height: 5.h,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SvgPicture.asset("assets/sampleLogo.svg"),
                            SizedBox(
                              width: 10.h,
                            ),
                            Text(
                              'Sample',
                              style: TextStyle(
                                  fontSize: 32.sp,
                                  fontFamily: "Poppins",
                                  color: const Color(textColor),
                                  fontWeight: FontWeight.w500),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 20.h,
                        ),
                        Text(
                          'Welcome',
                          style: TextStyle(
                              fontSize: 20.sp,
                              fontFamily: "Poppins",
                              color: const Color(textColor),
                              fontWeight: FontWeight.w400),
                        ),
                        SizedBox(
                          height: 5.h,
                        ),
                        Text(
                          'Schedule smarter, reclaim your time',
                          style: TextStyle(
                              fontFamily: "Poppins",
                              fontSize: 14.sp,
                              color: const Color(textSubtitle)),
                        ),
                        SizedBox(
                          height: 20.h,
                        ),
                        ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const Signin(),
                              ),
                            );
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: const Color(primaryColor),
                            minimumSize: Size(double.infinity,
                                48.0.h), // Set width and height
                          ),
                          child: Text(
                            'Sign in',
                            style: TextStyle(
                              color: const Color(textLight),
                              fontSize: 16.sp,
                              fontFamily: "Poppins",
                              fontWeight: FontWeight.normal,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 10.h,
                        ),
                        OutlinedButton(
                          style: OutlinedButton.styleFrom(
                            minimumSize: Size(
                                double.infinity, 48.h), // Set width and height
                            side: const BorderSide(
                              color: Color(
                                  primaryColor), // Set your desired outline color
                              width: 1, // Adjust outline width (optional)
                            ),
                          ),
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const Signup(),
                              ),
                            );
                          },
                          child: Text(
                            'Sign up',
                            style: TextStyle(
                              color: const Color(primaryColor),
                              fontSize: 16.sp,
                              fontFamily: "Poppins",
                              fontWeight: FontWeight.normal,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
