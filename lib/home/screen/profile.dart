import 'package:app/properties.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'PROFILE',
        style: TextStyle(
          fontSize: 24.sp,
          color: const Color(textColor),
        ),
      ),
    );
  }
}
