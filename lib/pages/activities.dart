import 'package:app/properties.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Activities extends StatefulWidget {
  const Activities({super.key});

  @override
  State<Activities> createState() => _ActivitiesState();
}

class _ActivitiesState extends State<Activities> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: const Color(backgroundColor),
      body: Center(
        child: Text(
          'ACTIVITIES',
          style: TextStyle(fontSize: 24.sp, color: const Color(textColor)),
        ),
      ),
    );
  }
}
