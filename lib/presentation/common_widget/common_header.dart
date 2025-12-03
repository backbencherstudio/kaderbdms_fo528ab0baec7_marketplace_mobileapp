import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kaderbdms_fo528ab0baec7_marketplace_mobileapp/core/resource/constansts/color_manger.dart';
import 'package:kaderbdms_fo528ab0baec7_marketplace_mobileapp/core/resource/constansts/icon_manager.dart';
import 'package:kaderbdms_fo528ab0baec7_marketplace_mobileapp/core/resource/style_manager.dart';

class CommonHeader extends StatelessWidget {
  const CommonHeader({super.key, required this.title, this.onTap});

  final String title;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        GestureDetector(
          onTap:
              onTap ??
              () {
                Navigator.pop(context);
              },
          child: Image.asset(IconManager.arrowLeft, height: 32.h, width: 32.w),
        ),

        SizedBox(width: 10.w),

        Text(
          title,
          style: getSemiBold600Style24(color: ColorManager.textPrimaryBlack),
        ),
      ],
    );
  }
}
