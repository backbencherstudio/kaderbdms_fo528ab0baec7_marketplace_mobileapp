import 'package:flutter/material.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:kaderbdms_fo528ab0baec7_marketplace_mobileapp/core/constansts/app_colors.dart';

class CommonPinField extends StatelessWidget {
  final int length;
  final TextEditingController controller;

  final double fieldHeight;
  final double fieldWidth;

  final Color activeColor;
  final Color inactiveColor;
  final Color selectedColor;

  final Color activeFillColor;
  final Color inactiveFillColor;
  final Color selectedFillColor;

  final bool autoFocus;

  final void Function(String)? onChanged;
  final void Function(String)? onCompleted;

  const CommonPinField({
    super.key,
    required this.length,
    required this.controller,
    this.fieldHeight = 55,
    this.fieldWidth = 55,

    this.activeColor = AppColors.textFieldBorder,
    this.inactiveColor = AppColors.textFieldBorder,
    this.selectedColor = AppColors.textFieldBorder,

    this.activeFillColor = Colors.white,
    this.inactiveFillColor = Colors.white,
    this.selectedFillColor = Colors.white,

    this.autoFocus = false,

    this.onChanged,
    this.onCompleted,
  });

  @override
  Widget build(BuildContext context) {
    return PinCodeTextField(
      appContext: context,
      controller: controller,
      length: length,
      autoFocus: autoFocus,
      keyboardType: TextInputType.number,
      animationType: AnimationType.fade,
      enableActiveFill: true,
      cursorColor: activeColor,

      pinTheme: PinTheme(
        shape: PinCodeFieldShape.box,
        borderRadius: BorderRadius.circular(10),

        fieldHeight: fieldHeight,
        fieldWidth: fieldWidth,

        borderWidth: 1,

        activeColor: activeColor,
        inactiveColor: inactiveColor,
        selectedColor: selectedColor,

        activeFillColor: activeFillColor,
        inactiveFillColor: inactiveFillColor,
        selectedFillColor: selectedFillColor,
      ),

      onChanged: onChanged,
      onCompleted: onCompleted,
    );
  }
}
