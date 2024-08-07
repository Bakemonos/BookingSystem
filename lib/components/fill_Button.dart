import 'package:app/properties.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MyButton extends StatefulWidget {
  final String textButton;
  final Widget destinationScreen;
  const MyButton(
      {super.key, required this.destinationScreen, required this.textButton});

  @override
  State<MyButton> createState() => _MyButtonState();
}

class _MyButtonState extends State<MyButton> {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => widget.destinationScreen,
          ),
        );
      },
      style: ElevatedButton.styleFrom(
        backgroundColor: const Color(primaryColor),
        minimumSize: Size(double.infinity, 48.h), // Set width and height
      ),
      child: Text(
        widget.textButton,
        style: TextStyle(
          color: const Color(textLight),
          fontSize: 16.sp,
          fontFamily: "Poppins",
          fontWeight: FontWeight.normal,
        ),
      ),
    );
  }
}
