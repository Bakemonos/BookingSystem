import 'package:app/properties.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Records extends StatefulWidget {
  const Records({super.key});

  @override
  State<Records> createState() => _RecordsState();
}

class _RecordsState extends State<Records> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(backgroundColor),
      body: Center(
        child: Text(
          'RECORDS',
          style: TextStyle(fontSize: 24.sp, color: const Color(textColor)),
        ),
      ),
    );
  }
}
