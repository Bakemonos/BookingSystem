import 'package:app/pages/mpinconfirm.dart';
import 'package:app/properties.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
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
          leading: IconButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const Mpinconfirm()));
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
              Column(
                children: [
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const Mpinconfirm(),
                        ),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(primaryColor),
                      minimumSize:
                          Size(double.infinity, 48.h), // Set width and height
                    ),
                    child: Text(
                      'Enter',
                      style: TextStyle(
                        color: const Color(textLight),
                        fontSize: 16.sp,
                        fontFamily: "Poppins",
                        fontWeight: FontWeight.normal,
                      ),
                    ),
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
