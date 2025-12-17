import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kaderbdms_fo528ab0baec7_marketplace_mobileapp/core/resource/constansts/color_manger.dart';
import 'package:kaderbdms_fo528ab0baec7_marketplace_mobileapp/core/resource/style_manager.dart';

class chatTextField extends StatelessWidget {
  const chatTextField({
    super.key,
    this.controller,
    this.hintText,
    this.keyboardType,
    this.onChanged,
    this.validator,
    this.readOnly = false,
    this.hintColor,
    this.hintFontSize,
    this.textColor,
    this.textFontSize,
  });

  final TextEditingController? controller;
  final String? hintText;
  final TextInputType? keyboardType;
  final Function(String)? onChanged;
  final String? Function(String?)? validator;
  final bool readOnly;

  final Color? hintColor;
  final double? hintFontSize;
  final Color? textColor;
  final double? textFontSize;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      keyboardType: keyboardType,
      onChanged: onChanged,
      validator: validator,
      readOnly: readOnly,
      style: TextStyle(
        color: textColor ?? ColorManager.textPrimary,
        fontSize: (textFontSize ?? 14).sp,
      ),
      decoration: InputDecoration(
        contentPadding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 15.h),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(100.r)),
        hintText: hintText,
        hintStyle: getMedium500Style14(
          color: hintColor ?? ColorManager.textSecondaryTwo,
          fontSize: (hintFontSize ?? 14).sp,
        ),
      ),
    );
  }
}
