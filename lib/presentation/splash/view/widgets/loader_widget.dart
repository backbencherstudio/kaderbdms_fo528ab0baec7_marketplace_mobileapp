import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoaderWidget extends StatefulWidget {
  const LoaderWidget({super.key});

  @override
  State<LoaderWidget> createState() => _LoaderWidgetState();
}

class _LoaderWidgetState extends State<LoaderWidget> {
  @override
  void initState() {
    super.initState();

    /// Navigate after 4 seconds
    Timer(const Duration(seconds: 4), () {
      if (mounted) {
        Navigator.pushReplacementNamed(context, "");
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 75.w,
      height: 65.h,
      child: CircularProgressIndicator(
        strokeWidth: 9.w,
        valueColor: AlwaysStoppedAnimation(Colors.white),
        // backgroundColor: Colors.white24,
        backgroundColor: Colors.white24,
      ),
    );
  }
}
