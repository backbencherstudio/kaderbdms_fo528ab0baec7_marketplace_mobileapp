import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kaderbdms_fo528ab0baec7_marketplace_mobileapp/core/constansts/app_colors.dart';

class CustomTextField extends StatelessWidget {
  final String hint;
  final double width;
  final EdgeInsets? padding;
  final Widget? prefixIcon;
  final bool isPassword;
  final TextStyle? style;
  final TextEditingController? controller;
  final TextInputType keyboardType;
  final Widget? suffixIcon;
  final String? label;
  final Function(String)? onChanged;
  final VoidCallback? onTap;

  const CustomTextField({
    super.key,
    required this.hint,
    this.width = double.infinity,
    this.padding,
    this.style,
    this.prefixIcon,
    this.isPassword = false,
    this.controller,
    this.keyboardType = TextInputType.text,
    this.suffixIcon,
    this.label,
    this.onChanged,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: TextField(
        controller: controller,
        readOnly: onTap != null,
        onTap: onTap,
        obscureText: isPassword,
        keyboardType: keyboardType,
        onChanged: onChanged,
        decoration: InputDecoration(
          labelText: label,
          hintText: hint,
          prefixIcon: prefixIcon,
          suffixIcon: suffixIcon,
          prefixIconConstraints: BoxConstraints(minWidth: 50, minHeight: 30),

          contentPadding: EdgeInsets.symmetric(
            horizontal: 16.h,
            vertical: 14.w,
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(100.r),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(100.r),
            borderSide: const BorderSide(color: AppColors.borderColor),
          ),
        ),
      ),
    );
  }
}
