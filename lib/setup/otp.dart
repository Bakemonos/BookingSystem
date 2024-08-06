import 'package:app/Widgets/back_arrow.dart';
import 'package:app/components/button.dart';
import 'package:app/properties.dart';
import 'package:app/setup/mpin.dart';
import 'package:app/setup/signup.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_verification_code/flutter_verification_code.dart';

class Otp extends StatefulWidget {
  const Otp({super.key});

  @override
  State<Otp> createState() => _OtpState();
}

class _OtpState extends State<Otp> {
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
          leading: backArrowButton(context, const Signup()),
        ),
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 16.h),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  Text(
                    'Enter the 6-digit One-Time PIN \n(OTP)',
                    style: TextStyle(
                      fontSize: 16.sp,
                      color: const Color(textColor),
                    ),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(
                    height: 50.h,
                  ),
                  VerificationCode(
                    autofocus: true,
                    digitsOnly: true,
                    length: 6,
                    textStyle: TextStyle(fontSize: 24.sp),
                    underlineColor: const Color(primaryColor),
                    keyboardType: TextInputType.number,
                    onCompleted: (value) {},
                    onEditing: (value) {},
                  ),
                  SizedBox(
                    height: 30.h,
                  ),
                  Text(
                    'We sent a 6-digit authentication code to your \nregistered Email',
                    style: TextStyle(
                        fontSize: 12.sp, color: const Color(textSubtitle)),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(
                    height: 40.h,
                  ),
                  Text(
                    'Didn’t receive code?',
                    style: TextStyle(
                        fontSize: 14.sp, color: const Color(textSubtitle)),
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Resend New Code',
                        style: TextStyle(
                          fontSize: 13.sp,
                          color: const Color(secondaryColor).withOpacity(0.8),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.only(left: 5.w),
                        child: Text(
                          '2:00',
                          style: TextStyle(
                              fontSize: 13.sp,
                              color:
                                  const Color(secondaryColor).withOpacity(0.8)),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              const Column(
                children: [
                  MyButton(
                    destinationScreen: Mpin(),
                    textButton: 'Verify',
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
