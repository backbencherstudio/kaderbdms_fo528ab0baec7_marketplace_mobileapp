import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kaderbdms_fo528ab0baec7_marketplace_mobileapp/core/constansts/app_colors.dart';
import 'package:kaderbdms_fo528ab0baec7_marketplace_mobileapp/core/resource/font_manager.dart';
import 'package:kaderbdms_fo528ab0baec7_marketplace_mobileapp/core/resource/style_manager.dart';
import 'package:kaderbdms_fo528ab0baec7_marketplace_mobileapp/presentation/auth/common/widgets/CircleCheckIcon.dart';

class PasswordRequirementItem extends StatelessWidget {
  final bool value;
  final Function(bool) onChanged;
  final String text;

  const PasswordRequirementItem({
    super.key,
    required this.value,
    required this.onChanged,
    required this.text,

    bool rememberMe = false,
  });

  bool? get rememberMe => null;
  bool? get rememberMe1 => null;
  bool? get rememberMe2 => null;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CircleCheckIcon(
          isChecked: value,
          size: 11,
          activeColor: AppColors.fotgotpassText,
          inactiveColor: AppColors.defaultColor,
          onTap: () {
            onChanged(!value);
          },
        ),
        SizedBox(width: 5.w),
        Text(
          text,
          style: customTextStyle(
            fontFamily: FontConstants.fontFamilyInter,
            fontWeight: FontWeightManager.regural400,
            fontSize: 14.sp,
            color: AppColors.buttonSecTextColor,
          ),
        ),
      ],
    );
  }

  void setState(Null Function() param0) {}
}
