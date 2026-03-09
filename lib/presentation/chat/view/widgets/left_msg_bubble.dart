import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kaderbdms_fo528ab0baec7_marketplace_mobileapp/core/resource/constansts/color_manger.dart';
import 'package:kaderbdms_fo528ab0baec7_marketplace_mobileapp/core/resource/style_manager.dart';

class Leftmsgbubble extends StatelessWidget {
  final String message;
  final bool isTop;

  const Leftmsgbubble({super.key, required this.message, required this.isTop});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          padding: EdgeInsets.symmetric(horizontal: 14.w, vertical: 10.h),
          decoration: BoxDecoration(
            color: ColorManager.chatBoxbgColor,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(isTop ? 0 : 20.r),
              bottomLeft: Radius.circular(isTop ? 20.r : 0),
              topRight: Radius.circular(14.r),
              bottomRight: Radius.circular(14.r),
            ),
          ),
          child: Text(
            message,
            style: getRegular400Style14(
              fontSize: 14.sp,
              color: ColorManager.chatTextColorTwo,
            ),
          ),
        ),
      ],
    );
  }
}
