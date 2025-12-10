import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kaderbdms_fo528ab0baec7_marketplace_mobileapp/core/constansts/app_colors.dart';
import 'package:kaderbdms_fo528ab0baec7_marketplace_mobileapp/core/resource/constansts/icon_manager.dart';
import 'package:kaderbdms_fo528ab0baec7_marketplace_mobileapp/core/resource/font_manager.dart';
import 'package:kaderbdms_fo528ab0baec7_marketplace_mobileapp/core/resource/style_manager.dart';
import 'package:kaderbdms_fo528ab0baec7_marketplace_mobileapp/presentation/auth/common/widgets/custom_text_field.dart';

class SignupForm extends StatelessWidget {
  final TextEditingController nameController;
  final TextEditingController emailController;
  final TextEditingController dateController;
  final TextEditingController passController;
  final TextEditingController confirmpassController;
  final bool showPassword;
  final bool confirmshowPassword;
  final VoidCallback onTogglePassword;
  final VoidCallback onconfirmTogglePassword;

  const SignupForm({
    super.key,
    required this.nameController,
    required this.emailController,
    required this.dateController,
    required this.passController,
    required this.confirmpassController,
    required this.showPassword,
    required this.confirmshowPassword,
    required this.onTogglePassword,
    required this.onconfirmTogglePassword,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomTextField(
          prefixIcon: Image.asset(IconManager.peopleIcon),
          hint: "Your Name",
          style: customTextStyle(
            fontFamily: FontConstants.fontFamilyInter,
            fontWeight: FontWeightManager.regural400,
            fontSize: 16.sp,
            color: AppColors.textFieldtextColor,
          ),
          controller: nameController,
        ),
        SizedBox(height: 12.h),
        CustomTextField(
          prefixIcon: Image.asset(IconManager.emailIcon),
          hint: "Your Email",
          style: customTextStyle(
            fontFamily: FontConstants.fontFamilyInter,
            fontWeight: FontWeightManager.regural400,
            fontSize: 16.sp,
            color: AppColors.textFieldtextColor,
          ),
          controller: emailController,
        ),
        SizedBox(height: 12.h),
        CustomTextField(
          prefixIcon: Image.asset("assets/icons/calendar.png"),
          hint: "15/06/2000",
          style: customTextStyle(
            fontFamily: FontConstants.fontFamilyInter,
            fontWeight: FontWeightManager.regural400,
            fontSize: 16.sp,
            color: AppColors.textFieldtextColor,
          ),
          onTap: () async {
            DateTime? pickedDate = await showDatePicker(
              context: context,
              initialDate: DateTime.now(),
              firstDate: DateTime(1950),
              lastDate: DateTime(2100),
            );
            if (pickedDate != null) {
              dateController.text =
                  "${pickedDate.day.toString().padLeft(2, '0')}-"
                  "${pickedDate.month.toString().padLeft(2, '0')}-"
                  "${pickedDate.year}";
            }
          },
          controller: dateController,
        ),
        SizedBox(height: 12.h),
        _passwordField(controller: passController, hint: "Enter your password"),
        SizedBox(height: 12.h),
        _passwordField(
          controller: confirmpassController,
          hint: "Confirm your password",
        ),
      ],
    );
  }

  Widget _passwordField({
    required TextEditingController controller,
    required String hint,
  }) {
    return CustomTextField(
      prefixIcon: Padding(
        padding: const EdgeInsets.all(10),
        child: Image.asset(IconManager.passwordIcon),
      ),
      hint: hint,
      controller: controller,
      isPassword: hint == "Enter your password"
          ? !showPassword
          : !confirmshowPassword,
      style: customTextStyle(
        fontFamily: FontConstants.fontFamilyInter,
        fontWeight: FontWeightManager.medium500,
        fontSize: 16.sp,
        color: AppColors.textFieldtextColor,
      ),
      suffixIcon: IconButton(
        icon: Icon(
          hint == "Enter your password"
              ? (showPassword ? Icons.visibility : Icons.visibility_off)
              : (confirmshowPassword ? Icons.visibility : Icons.visibility_off),
          color: AppColors.blackHeadline,
        ),
        onPressed: hint == "Enter your password"
            ? onTogglePassword
            : onconfirmTogglePassword,
        splashColor: Colors.transparent,
        highlightColor: Colors.transparent,
      ),
    );
  }
}
