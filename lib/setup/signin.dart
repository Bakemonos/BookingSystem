import 'package:app/components/fill_Button.dart';
import 'package:app/components/text_Field.dart';
import 'package:app/components/usable_Button.dart';
import 'package:app/properties.dart';
import 'package:app/setup/getstarted.dart';
import 'package:app/setup/signinmpinscreen.dart';
import 'package:app/setup/signup.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Signin extends StatefulWidget {
  const Signin({super.key});

  @override
  State<Signin> createState() => _SigninState();
}

class _SigninState extends State<Signin> {
  final emailTextController = TextEditingController();
  final passwordTextController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    // double screenWidth = MediaQuery.of(context).size.width;
    //double screenHeight = MediaQuery.of(context).size.height;

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
            'Sign In',
            style: TextStyle(fontSize: 20.sp, fontFamily: "Poppins"),
          ),
          leading: backArrowButton(context, const Getstarted()),
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
                padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 16.h),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        SizedBox(
                          height: 30.h,
                        ),
                        Text(
                          'Welcome back',
                          style: TextStyle(
                              color: const Color(textColor),
                              fontFamily: "Poppins",
                              fontSize: 24.sp),
                        ),
                        SizedBox(
                          height: 5.h,
                        ),
                        Text(
                          'Please log in to your account',
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
                          height: 5..h,
                        ),
                        MyTextField(
                          read: false,
                          controller: emailTextController,
                          obscureText: false,
                          hintText: 'Enter your email',
                          icon: Icons.email_outlined,
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        MyButton(
                            textButton: 'Sign in',
                            onPressed: () {
                              forward(context, const Signinmpinscreen());
                            }),
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
                                              const Signup()));
                                },
                                child: Text('Sign up',
                                    style: TextStyle(
                                        fontSize: 14.sp,
                                        fontFamily: "Poppins",
                                        color: const Color(primaryColor))),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
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
