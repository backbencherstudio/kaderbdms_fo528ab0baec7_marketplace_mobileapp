import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kaderbdms_fo528ab0baec7_marketplace_mobileapp/core/resource/constansts/color_manger.dart';

class CustomTextField extends StatelessWidget {
  final String hint;
  final double width;
  final double? height;
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
  final Color? borderColor;
  final double? borderRadius;
  final Color? fillcolor;
  final String? errorText;

  final bool showSendButton;
  final VoidCallback? onSendTap;

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
    this.borderColor,
    this.borderRadius,
    this.fillcolor,
    this.height,
    this.errorText,
    this.showSendButton = false,
    this.onSendTap,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      readOnly: onTap != null,
      onTap: onTap,
      obscureText: isPassword,
      keyboardType: keyboardType,
      onChanged: onChanged,
      decoration: InputDecoration(
        filled: true,
        fillColor: fillcolor,
        labelText: label,
        hintText: hint,

        prefixIcon: prefixIcon,

        suffixIcon: showSendButton
            ? GestureDetector(
                onTap: onSendTap,
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10.h),
                  child: Icon(
                    Icons.send_rounded,
                    size: 20.sp,
                    color: ColorManager.textSecondaryThree,
                  ),
                ),
              )
            : suffixIcon,

        prefixIconConstraints: const BoxConstraints(
          minWidth: 50,
          minHeight: 30,
        ),

        contentPadding: EdgeInsets.symmetric(horizontal: 8.h, vertical: 14.w),

        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(borderRadius ?? 100.r),
          borderSide: BorderSide(
            color: borderColor ?? ColorManager.fieldText,
            width: 1,
          ),
        ),

        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(borderRadius ?? 100.r),
          borderSide: BorderSide(
            color: borderColor ?? ColorManager.fieldText,
            width: 1.5,
          ),
        ),

        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(borderRadius ?? 100.r),
        ),
      ),
    );
  }
}
