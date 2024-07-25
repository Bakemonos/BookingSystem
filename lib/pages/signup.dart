import 'package:app/pages/getstarted.dart';
import 'package:app/pages/otp.dart';
import 'package:app/pages/signin.dart';
import 'package:app/properties.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Signup extends StatefulWidget {
  const Signup({super.key});

  @override
  State<Signup> createState() => _SignupState();
}

final TextEditingController emailController = TextEditingController();
bool emailHasError = false;

class _SignupState extends State<Signup> {
  @override
  Widget build(BuildContext context) {
    // double screenWidth = MediaQuery.of(context).size.width;
    // double screenHeight = MediaQuery.of(context).size.height;

    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: const Color(backgroundColor),
        appBar: AppBar(
          backgroundColor: const Color(foregroundColor),
          centerTitle: true,
          automaticallyImplyLeading: false,
          title: Text(
            'Sign Up',
            style: TextStyle(fontSize: 20.sp, fontFamily: "Poppins"),
          ),
          leading: IconButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const Getstarted()));
              },
              icon: SvgPicture.asset(
                  width: 24.w, height: 24.h, "assets/Icons/arrow.svg")),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Container(
              width: double.infinity,
              height: 500.h,
              decoration: BoxDecoration(
                color: const Color(foregroundColor),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(50.r),
                  topRight: Radius.circular(50.r),
                ),
              ),
              child: Padding(
                padding: EdgeInsets.fromLTRB(25.w, 0, 25.w, 25.h),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        SizedBox(
                          height: 30.h,
                        ),
                        Text(
                          'Get Started',
                          style: TextStyle(
                              color: const Color(textColor),
                              fontFamily: "Poppins",
                              fontSize: 24.sp),
                        ),
                        SizedBox(
                          height: 5.h,
                        ),
                        Text(
                          'Sign Up to Unlock Appointment Power',
                          style: TextStyle(
                              color: const Color(textSubtitle),
                              fontFamily: "Poppins",
                              fontSize: 14.sp),
                        ),
                        SizedBox(
                          height: 20.h,
                        ),
                        Container(
                          alignment: Alignment.topLeft,
                          child: Text(
                            'Email',
                            style: TextStyle(
                                fontSize: 14.sp,
                                color: const Color(textColor),
                                fontFamily: "Poppins"),
                          ),
                        ),
                        SizedBox(
                          height: 5.h,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            TextField(
                              controller: emailController,
                              decoration: InputDecoration(
                                enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      width: 1, color: emailHasError ? Colors.red :  const Color(primaryColor)),
                                  borderRadius: BorderRadius.circular(5.r),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    width: 2,
                                    color: emailHasError ? Colors.red : const Color(primaryColor),
                                  ),
                                  borderRadius: BorderRadius.circular(5.r),
                                ),
                                prefixIcon: Padding(
                                  padding: EdgeInsets.only(left: 20.w, right: 10.w),
                                  child: Icon(
                                    size: 24.w,
                                    Icons.email_outlined,
                                    color: const Color(primaryColor),
                                  ),
                                ),
                                hintText: 'Enter your email',
                                contentPadding: EdgeInsets.symmetric(
                                    horizontal: 20.w, vertical: 15.h),
                                hintStyle: const TextStyle(
                                    color: Color(textStroke),
                                    fontFamily: "Poppins"),
                                focusColor: const Color(textStroke),
                              ),
                            ),
                          ],
                        ),
                        if (emailHasError)
                            Align(alignment: Alignment.centerLeft,
                            child: Text(
                              'Please enter your email',
                              style: TextStyle(
                                  color: Colors.red,
                                  fontFamily: "Poppins",
                                  fontSize: 12.sp),
                            ),)
                            
                      ],
                    ),
                    Column(
                      children: [
                        ElevatedButton(
                          onPressed: () {
                            
                            
                            // Navigator.push(
                            //   context,
                            //   MaterialPageRoute(
                            //     builder: (context) => const Otp(),
                                
                            //   ),
                            // );
                            
                            if (emailController.text.isEmpty) {
                              
                              setState(() {
                                emailHasError = emailController.text.isEmpty;
                              });
                            } else {
                              setState(() {
                                emailHasError = false;
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => const Otp(),
                                  ),
                                );
                              });

                            }

                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: const Color(primaryColor),
                            minimumSize: Size(double.infinity, 48.h),
                          ),
                          child: Text(
                            'Next',
                            style: TextStyle(
                              color: const Color(textLight),
                              fontSize: 16.sp,
                              fontFamily: "Poppins",
                              fontWeight: FontWeight.normal,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 48.h,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'Already have an account?',
                                style: TextStyle(
                                    fontSize: 14.sp,
                                    fontFamily: "Poppins",
                                    color: const Color(textColor)),
                              ),
                              SizedBox(
                                width: 10.w,
                              ),
                              GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              const Signin()));
                                },
                                child: Text('Sign in',
                                    style: TextStyle(
                                        fontSize: 14.sp,
                                        fontFamily: "Poppins",
                                        color: const Color(primaryColor))),
                              )
                            ],
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
