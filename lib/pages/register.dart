import 'package:app/pages/getstarted.dart';
import 'package:app/properties.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Register extends StatefulWidget {
  const Register({super.key});

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  final TextEditingController _dateController = TextEditingController();
  String valueChoose = "Select";
  bool isChecked = false;
  void dialogpopup() {
    // double screenWidth = MediaQuery.of(context).size.width;

    showDialog(
      context: context,
      builder: (BuildContext context) {
        return Dialog(
          insetPadding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),
          child: Container(
              height: 600.h,
              width: 800.w,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(8.r)),
                color: const Color(foregroundColor),
              ),
              child: Column(
                children: [
                  Container(
                    height: 62.h,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(8.r),
                          topRight: Radius.circular(8.r)),
                      color: const Color(primaryColor),
                    ),
                    child: Padding(
                      padding: EdgeInsets.only(
                        right: 20.w,
                        left: 20.w,
                      ),
                      child: Row(
                        children: [
                          SvgPicture.asset(
                              "assets/Icons/termsAndCondition.svg"),
                          const Spacer(
                            flex: 1,
                          ),
                          Text(
                            'TERMS AND CONDITION',
                            style: TextStyle(
                                color: const Color(textLight),
                                fontFamily: "Poppins",
                                fontSize: 16.sp,
                                fontWeight: FontWeight.w400),
                          ),
                          const Spacer(
                            flex: 3,
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  Expanded(
                      child: SingleChildScrollView(
                    child: Padding(
                      padding: EdgeInsets.only(left: 20.w, right: 20.w),
                      child: Text(
                        '1. Eligibility & Use:\n'
                        'You must be at least 18 years old to use the App.\n'
                        'You are responsible for maintaining your login information and activity within the App.\n'
                        'Use the App lawfully, respectfully, and for its intended purpose (appointment scheduling).\n'
                        '2. Content Ownership:\n'
                        'We own the App content (text, images, code, etc.). Don\'t copy, modify, or distribute it without permission.\n'
                        'You own the content you submit (appointments, notes, etc.). You grant us a license to display it within the App.\n'
                        '3. Disclaimers & Limitations:\n'
                        'The App is provided "as is" with no guarantees of uninterrupted or error-free service.\n'
                        'We are not liable for any damages arising from App use.\n'
                        '4. Termination:\n'
                        'We may terminate your access for any reason. You can terminate your account anytime.\n'
                        '5. Governing Law & Disputes:\n'
                        'These Terms are governed by the laws of [Your State]. Disputes will be settled through arbitration.\n'
                        '6. Entire Agreement:\n'
                        'This is the entire agreement between us. If any part is invalid, the rest remains enforceable.\n'
                        '7. Contact:\n'
                        'For questions, please contact us at [Your Email Address].\n'
                        'This is a concise and essential version of terms and conditions for your appointment app. Remember to replace [Your State] and [Your Email Address] with your specific information.',
                        style: TextStyle(
                            fontSize: 14.sp,
                            fontFamily: "Poppins",
                            color: const Color(textSubtitle)),
                      ),
                    ),
                  )),
                  SizedBox(
                    height: 10.h,
                  ),
                  Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          child: OutlinedButton(
                            style: OutlinedButton.styleFrom(
                              minimumSize: Size(double.infinity, 48.0.h),
                              side: const BorderSide(
                                color: Color(
                                    primaryColor), // Set your desired outline color
                                width: 1,
                                // Adjust outline width (optional)
                              ),
                            ),
                            onPressed: () {
                              setState(() {
                                isChecked = false;
                              });
                              Navigator.of(context).pop();
                            },
                            child: Text(
                              'Decline',
                              style: TextStyle(
                                  fontSize: 14.sp,
                                  fontFamily: "Poppins",
                                  color: const Color(primaryColor)),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 10.w,
                        ),
                        Expanded(
                          child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  backgroundColor: const Color(primaryColor),
                                  minimumSize: Size(double.infinity, 48.h)),
                              onPressed: () {
                                setState(() {
                                  isChecked = true;
                                });
                                Navigator.of(context).pop();
                              },
                              child: Text(
                                'Accept',
                                style: TextStyle(
                                    fontSize: 14.sp,
                                    fontFamily: "Poppins",
                                    color: const Color(textLight)),
                              )),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                ],
              )),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    // double screenWidth = MediaQuery.of(context).size.width;
    // double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: const Color(backgroundColor),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 25.w, vertical: 25.h),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 30.h),
              Text(
                'Personal Information ',
                style: TextStyle(
                    fontSize: 20.sp,
                    color: const Color(textColor),
                    fontFamily: "Poppins"),
              ),
              Text(
                'Please complete all fields',
                style: TextStyle(
                    fontSize: 12.sp,
                    fontFamily: "Poppins",
                    color: const Color(textSubtitle)),
              ),
              SizedBox(
                height: 30.h,
              ),
              Row(
                children: [
                  Text(
                    'UID:',
                    style: TextStyle(
                        fontSize: 14.sp,
                        fontFamily: "Poppins",
                        color: const Color(textColor)),
                  ),
                  SizedBox(
                    width: 10.h,
                  ),
                  Text(
                    'X9Z7Y8',
                    style: TextStyle(
                        fontSize: 14.sp,
                        fontFamily: "Poppins",
                        color: const Color(textSubtitle)),
                  ),
                ],
              ),
              SizedBox(
                height: 30.h,
              ),
              Column(
                children: [
                  Container(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'First Name',
                      style: TextStyle(
                          fontSize: 14.sp,
                          color: const Color(textColor),
                          fontFamily: "Poppins"),
                    ),
                  ),
                  SizedBox(
                    height: 5.h,
                  ),
                  TextField(
                    decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                          borderSide: const BorderSide(
                            width: 1,
                            color: Color(textSubtitle),
                          ),
                          borderRadius: BorderRadius.circular(5.r),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: const BorderSide(
                            width: 1,
                            color: Color(primaryColor),
                          ),
                          borderRadius: BorderRadius.circular(5.r),
                        ),
                        hintStyle: const TextStyle(
                          color: Color(textStroke),
                        ),
                        hintText: 'Enter First Name',
                        contentPadding: EdgeInsets.symmetric(
                            horizontal: 20.w, vertical: 15.h)),
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  Container(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Middle Initial',
                      style: TextStyle(
                          fontSize: 14.sp,
                          color: const Color(textColor),
                          fontFamily: "Poppins"),
                    ),
                  ),
                  SizedBox(
                    height: 5.h,
                  ),
                  TextField(
                      decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(
                            borderSide: const BorderSide(
                                width: 1, color: Color(textSubtitle)),
                            borderRadius: BorderRadius.circular(5.r),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: const BorderSide(
                              width: 1,
                              color: Color(primaryColor),
                            ),
                            borderRadius: BorderRadius.circular(5.r),
                          ),
                          hintStyle: const TextStyle(color: Color(textStroke)),
                          hintText: 'Enter Middle Initial',
                          contentPadding: EdgeInsets.symmetric(
                              horizontal: 20.w, vertical: 15.h))),
                  SizedBox(
                    height: 10.h,
                  ),
                  Container(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Last Name',
                      style: TextStyle(
                          fontSize: 14.sp,
                          color: const Color(textColor),
                          fontFamily: "Poppins"),
                    ),
                  ),
                  SizedBox(
                    height: 5.h,
                  ),
                  TextField(
                      decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(
                            borderSide: const BorderSide(
                                width: 1, color: Color(textSubtitle)),
                            borderRadius: BorderRadius.circular(5.r),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: const BorderSide(
                              width: 1,
                              color: Color(primaryColor),
                            ),
                            borderRadius: BorderRadius.circular(5.r),
                          ),
                          hintStyle: const TextStyle(color: Color(textStroke)),
                          hintText: 'Enter Last Name',
                          contentPadding: EdgeInsets.symmetric(
                              horizontal: 20.w, vertical: 15.h))),
                  SizedBox(
                    height: 10.h,
                  ),
                  Container(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Gender',
                      style: TextStyle(
                          fontSize: 14.sp,
                          color: const Color(textColor),
                          fontFamily: "Poppins"),
                    ),
                  ),
                  SizedBox(
                    height: 5.h,
                  ),
                  Container(
                    alignment: Alignment.center,
                    height: 48.h,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        border: Border.all(
                            width: 1, color: const Color(textSubtitle)),
                        borderRadius: BorderRadius.circular(5.r)),
                    child: DropdownButtonHideUnderline(
                      child: DropdownButton<String>(
                          padding: EdgeInsets.symmetric(horizontal: 20.w),
                          iconSize: 24.w,
                          dropdownColor: const Color(foregroundColor),
                          borderRadius: BorderRadius.circular(8.r),
                          value: valueChoose,
                          items: [
                            DropdownMenuItem(
                              value: 'Select',
                              child: Text(
                                'Select',
                                style: TextStyle(
                                    fontSize: 14.sp,
                                    fontFamily: "Poppins",
                                    color: const Color(textStroke)),
                              ),
                            ),
                            DropdownMenuItem(
                              value: 'Male',
                              child: Text(
                                'Male',
                                style: TextStyle(
                                    fontSize: 14.sp,
                                    fontFamily: "Poppins",
                                    color: const Color(textStroke)),
                              ),
                            ),
                            DropdownMenuItem(
                              value: 'Female',
                              child: Text(
                                'Female',
                                style: TextStyle(
                                    fontSize: 14.sp,
                                    fontFamily: "Poppins",
                                    color: const Color(textStroke)),
                              ),
                            ),
                            DropdownMenuItem(
                              value: 'Non-binary',
                              child: Text(
                                'Non-binary',
                                style: TextStyle(
                                    fontSize: 14.sp,
                                    fontFamily: "Poppins",
                                    color: const Color(textStroke)),
                              ),
                            ),
                            DropdownMenuItem(
                              value: 'Other',
                              child: Text(
                                'Other',
                                style: TextStyle(
                                    fontSize: 14.sp,
                                    fontFamily: "Poppins",
                                    color: const Color(textStroke)),
                              ),
                            ),
                          ],
                          icon: const Icon(
                            Icons.arrow_drop_down,
                            color: Color(textColor),
                          ),
                          isExpanded: true,
                          style: const TextStyle(color: Color(textColor)),
                          onChanged: (newValue) {
                            setState(() {
                              valueChoose = newValue!;
                            });
                          }),
                    ),
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  Container(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Date of Birth',
                      style: TextStyle(
                          fontSize: 14.sp,
                          color: const Color(textColor),
                          fontFamily: "Poppins"),
                    ),
                  ),
                  SizedBox(
                    height: 5.h,
                  ),
                  TextField(
                    controller: _dateController,
                    decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                          borderSide: const BorderSide(
                              width: 1, color: Color(textSubtitle)),
                          borderRadius: BorderRadius.circular(5.r),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: const BorderSide(
                            width: 1,
                            color: Color(primaryColor),
                          ),
                          borderRadius: BorderRadius.circular(5.r),
                        ),
                        hintStyle: const TextStyle(color: Color(textStroke)),
                        suffixIcon: Padding(
                          padding: EdgeInsets.only(right: 20.w),
                          child: SvgPicture.asset(
                            "assets/Icons/calendar.svg",
                            fit: BoxFit.scaleDown,
                          ),
                        ),
                        hintText: 'Date of Birth',
                        contentPadding: EdgeInsets.symmetric(
                            horizontal: 20.w, vertical: 15.h)),
                    readOnly: true,
                    onTap: () {
                      _selectDate();
                    },
                  ),
                ],
              ),
              SizedBox(
                height: 30.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(
                    width: 24.w,
                    height: 24.h,
                    child: Checkbox(
                        activeColor: const Color(primaryColor),
                        value: isChecked,
                        onChanged: (value) {
                          if (value == true) {
                            setState(() {
                              dialogpopup();
                            });
                          } else {
                            setState(() {
                              isChecked = false;
                            });
                          }
                        }),
                  ),
                  SizedBox(width: 5.w),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        isChecked = false;
                        dialogpopup();
                      });
                    },
                    child: Text(
                      'I have agreed to the privacy and policy',
                      style: TextStyle(
                        fontFamily: "Poppins",
                        color: const Color(textColor),
                        fontSize: 13.sp,
                      ),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 30.h,
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const Getstarted(),
                    ),
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(primaryColor),
                  minimumSize:
                      Size(double.infinity, 48.h), // Set width and height
                ),
                child: Text(
                  'Confirm',
                  style: TextStyle(
                    color: const Color(textLight),
                    fontSize: 16.sp,
                    fontFamily: "Poppins",
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ),
              SizedBox(height: 10.h),
              OutlinedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const Getstarted(),
                    ),
                  );
                },
                style: OutlinedButton.styleFrom(
                  minimumSize:
                      Size(double.infinity, 48.h), // Set width and height
                  side: const BorderSide(
                    color:
                        Color(primaryColor), // Set your desired outline color
                    width: 1, // Adjust outline width (optional)
                  ),
                ),
                child: Text(
                  'Cancel',
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
      ),
    );
  }

  Future<void> _selectDate() async {
    DateTime? picked = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2000),
      lastDate: DateTime(2100),
    );
    if (picked != null) {
      setState(() {
        _dateController.text = picked.toString().split(" ")[0];
      });
    }
  }
}
