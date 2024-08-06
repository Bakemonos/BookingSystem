import 'package:app/Widgets/back_arrow.dart';
import 'package:app/components/button.dart';
import 'package:app/properties.dart';
import 'package:app/setup/mpinconfirm.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_verification_code/flutter_verification_code.dart';

class Mpin extends StatefulWidget {
  const Mpin({super.key});

  @override
  State<Mpin> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<Mpin> {
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
            style: TextStyle(
                fontSize: 20.sp,
                fontFamily: "Poppins",
                color: const Color(textColor)),
          ),
          leading: backArrowButton(context, const Mpinconfirm()),
        ),
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 16.h),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  Container(
                    alignment: Alignment.center,
                    child: Text(
                      'Create your 4-digit MPIN',
                      style: TextStyle(
                        fontSize: 16.sp,
                        color: const Color(textColor),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  Text(
                    'Remember your 4-digit MPIN, this will serve as your login  code to enter the app',
                    style: TextStyle(
                        fontSize: 12.sp, color: const Color(textSubtitle)),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(
                    height: 30.h,
                  ),
                  VerificationCode(
                    autofocus: true,
                    digitsOnly: true,
                    textStyle: TextStyle(fontSize: 24.sp),
                    underlineColor: const Color(primaryColor),
                    keyboardType: TextInputType.number,
                    onCompleted: (value) {},
                    onEditing: (value) {},
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  Text(
                    'Please create a secure and memorable \n4-digit MPIN for yourself.',
                    style: TextStyle(
                        fontSize: 12.sp, color: const Color(textSubtitle)),
                    textAlign: TextAlign.center,
                  )
                ],
              ),
              const Column(
                children: [
                  MyButton(
                    destinationScreen: Mpinconfirm(),
                    textButton: 'Enter',
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
