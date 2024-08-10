import 'package:app/components/fill_Button.dart';
import 'package:app/components/usable_Button.dart';
import 'package:app/properties.dart';
import 'package:app/services/database.dart';
import 'package:app/setup/getstarted.dart';
import 'package:app/setup/register.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_verification_code/flutter_verification_code.dart';

class Mpin extends StatefulWidget {
  final String email; // Add email field
  final String secret;

  const Mpin({
    super.key,
    required this.email,
    required this.secret,
  }); // Update constructor

  @override
  State<Mpin> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<Mpin> {
  String _mpin = '';
  String _confirmMpin = '';
  bool _isFirstStep = true;

  void _onMpinCompleted(String value) {
    setState(() {
      _mpin = value;
      // Move to the confirmation step only if the MPIN length is correct
      if (_mpin.length == 4) {
        _isFirstStep = false;
      }
    });
  }

  void _onConfirmMpinCompleted(String value) {
    setState(() {
      _confirmMpin = value;
      // Validate after confirmation input is completed
      if (_confirmMpin.length == 4) {
        _validateAndProceed();
      }
    });
  }

  void _validateAndProceed() {
    if (_mpin.length == 4 && _confirmMpin.length == 4) {
      if (_mpin == _confirmMpin) {
        String password = _mpin;
        void handleSignUp() async {
          String email = widget.email;
          String secret = widget.secret; // Use the passed email
          password.trim();
          if (email.isEmpty) {
            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(content: Text('Please enter an email')),
            );
            return;
          }

          // Call insertData function
          await insertData(context, email, password, secret);

          // Navigate to the Register page if needed
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => const Register(),
            ),
          );
        }

        handleSignUp();
      } else {
        // Show error message and reset fields
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('MPINs do not match')),
        );
        setState(() {
          _mpin = '';
          _confirmMpin = '';
          _isFirstStep = true; // Go back to the first step
        });
      }
    } else {
      // Show error message
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Please enter a 4-digit MPIN')),
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
            style: TextStyle(
                fontSize: 20.sp,
                fontFamily: "Poppins",
                color: const Color(textColor)),
          ),
          leading: backArrowButton(context, const Getstarted()),
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
                      _isFirstStep
                          ? 'Create your 4-digit MPIN'
                          : 'Confirm your 4-digit MPIN',
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
                    _isFirstStep
                        ? 'Remember your 4-digit MPIN, this will serve as your login code to enter the app'
                        : 'Please re-enter your 4-digit MPIN to confirm.',
                    style: TextStyle(
                        fontSize: 12.sp, color: const Color(textSubtitle)),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(
                    height: 30.h,
                  ),
                  Visibility(
                    visible: _isFirstStep,
                    child: VerificationCode(
                      autofocus: true,
                      digitsOnly: true,
                      textStyle: TextStyle(fontSize: 24.sp),
                      underlineColor: const Color(primaryColor),
                      keyboardType: TextInputType.number,
                      onCompleted: _onMpinCompleted,
                      onEditing: (value) {},
                    ),
                  ),
                  Visibility(
                    visible: !_isFirstStep,
                    child: VerificationCode(
                      autofocus: true,
                      digitsOnly: true,
                      textStyle: TextStyle(fontSize: 24.sp),
                      underlineColor: const Color(primaryColor),
                      keyboardType: TextInputType.number,
                      onCompleted: _onConfirmMpinCompleted,
                      onEditing: (value) {},
                    ),
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  Text(
                    'Please create a secure and memorable \n4-digit MPIN for yourself.',
                    style: TextStyle(
                        fontSize: 12.sp, color: const Color(textSubtitle)),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
              if (!_isFirstStep)
                Column(
                  children: [
                    MyButton(
                        textButton: 'Next', onPressed: _validateAndProceed),
                  ],
                ),
            ],
          ),
        ),
      ),
    );
  }
}
