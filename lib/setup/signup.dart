import 'package:app/components/fill_Button.dart';
import 'package:app/components/text_Field.dart';
import 'package:app/components/text_WithValidation_Field.dart';
import 'package:app/components/usable_Button.dart';
import 'package:app/properties.dart';
import 'package:app/setup/getstarted.dart';
import 'package:app/setup/otp.dart';
import 'package:app/setup/signin.dart';
import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
// Import the globals file

class Signup extends StatefulWidget {
  const Signup({super.key});

  @override
  State<Signup> createState() => _SignupState();
}

final TextEditingController emailController = TextEditingController();
final TextEditingController secret = TextEditingController();

bool emailHasError = false;

class _SignupState extends State<Signup> {
  @override
  void initState() {
    super.initState();
    // Set initial text here
    secret.text = 'secretValidate';
  }

  @override
  void dispose() {
    secret.dispose(); // Dispose of the controller when it's no longer needed
    super.dispose();
  }

  void _validateAndProceed() {
    final email = emailController.text.trim();
    final secretC = secret.text.trim();
    if (email.isEmpty) {
      setState(() {
        emailHasError = true; // Set error if email is empty
      });
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Email cannot be empty')),
      );
    } else if (!EmailValidator.validate(email)) {
      setState(() {
        emailHasError = true; // Set error if email format is invalid
      });
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Invalid email format')),
      );
    } else {
      setState(() {
        emailHasError = false; // Clear error if email is valid
      });

      // Proceed to Mpin screen and pass the email
      Navigator.of(context).push(
        MaterialPageRoute(
          builder: (context) => Otp(email: email, secret: secretC),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
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
                        MyTextFieldWithValidation(
                          controller: emailController,
                          obscureText: false,
                          hintText: 'Enter your email',
                          icon: Icons.email_outlined,
                          hasError: emailHasError,
                        ),
                        MyTextField(
                            read: true,
                            controller: secret,
                            obscureText: false,
                            hintText: 'secret',
                            icon: Icons.hide_source),
                      ],
                    ),
                    Column(
                      children: [
                        MyButton(
                            textButton: 'Sign Up',
                            onPressed: _validateAndProceed),
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
                                      builder: (context) => const Signin(),
                                    ),
                                  );
                                },
                                child: Text(
                                  'Sign in',
                                  style: TextStyle(
                                    fontSize: 14.sp,
                                    fontFamily: "Poppins",
                                    color: const Color(primaryColor),
                                  ),
                                ),
                              ),
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
