import 'package:app/components/icon_Button.dart';
import 'package:app/components/fill_Button.dart';
import 'package:app/properties.dart';
import 'package:app/setup/register.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_verification_code/flutter_verification_code.dart';

class Mpinconfirm extends StatefulWidget {
  const Mpinconfirm({super.key});

  @override
  State<Mpinconfirm> createState() => _MpinconfirmState();
}

class _MpinconfirmState extends State<Mpinconfirm> {
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
          leading: backArrowButton(context, const Register()),
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
                      'Confirm your 4 digit MPIN',
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
                    'Remember your 4-digit MPIN, this will serve as your login code to enter the app',
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
                    'Type the 4-digits MPIN that you created for confirmation',
                    style: TextStyle(
                        fontSize: 12.sp, color: const Color(textSubtitle)),
                    textAlign: TextAlign.center,
                  )
                ],
              ),
              const Column(
                children: [
                  MyButton(
                    destinationScreen: Register(),
                    textButton: 'Confirm',
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
