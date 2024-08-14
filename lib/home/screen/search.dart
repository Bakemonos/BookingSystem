import 'package:app/properties.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Search extends StatefulWidget {
  const Search({super.key});

  @override
  State<Search> createState() => _ActivitiesState();
}

class _ActivitiesState extends State<Search> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(backgroundColor),
      body: Center(
        child: Text(
          'SEARCH',
          style: TextStyle(fontSize: 24.sp, color: const Color(textColor)),
        ),
      ),
    );
  }
}
