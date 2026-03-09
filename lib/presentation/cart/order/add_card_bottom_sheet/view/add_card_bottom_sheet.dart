import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kaderbdms_fo528ab0baec7_marketplace_mobileapp/core/constansts/app_colors.dart';
import 'package:kaderbdms_fo528ab0baec7_marketplace_mobileapp/core/resource/constansts/color_manger.dart';
import 'package:kaderbdms_fo528ab0baec7_marketplace_mobileapp/core/resource/constansts/icon_manager.dart';
import 'package:kaderbdms_fo528ab0baec7_marketplace_mobileapp/core/resource/font_manager.dart';
import 'package:kaderbdms_fo528ab0baec7_marketplace_mobileapp/core/resource/style_manager.dart';
import 'package:kaderbdms_fo528ab0baec7_marketplace_mobileapp/core/route/route_name.dart';
import 'package:kaderbdms_fo528ab0baec7_marketplace_mobileapp/presentation/Onboarding/widgets/custom_button.dart';
import 'package:kaderbdms_fo528ab0baec7_marketplace_mobileapp/presentation/auth/common/widgets/custom_text_field.dart';

void showAddCardBottomSheet(BuildContext context) {
  showModalBottomSheet(
    context: context,
    isScrollControlled: true,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.vertical(top: Radius.circular(25)),
    ),
    builder: (context) {
      String? selectedMonth;
      String? selectedYear;

      return StatefulBuilder(
        builder: (context, setState) {
          return Padding(
            padding: EdgeInsets.only(
              bottom: MediaQuery.of(context).viewInsets.bottom,
            ),
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 20.w),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: Center(
                          child: Container(
                            width: 40.w,
                            height: 5.h,
                            margin: EdgeInsets.only(bottom: 20.h),
                            decoration: BoxDecoration(
                              color: ColorManager.textPrimaryBlack,
                              borderRadius: BorderRadius.circular(25.r),
                            ),
                          ),
                        ),
                      ),

                      Transform.translate(
                        offset: Offset(0, -10),
                        child: GestureDetector(
                          onTap: () => Navigator.pop(context),
                          child: Image.asset(IconManager.close),
                        ),
                      ),
                    ],
                  ),

                  Text(
                    "Add Visa/Master Card",
                    style: getSemiBold600Style24(
                      fontSize: 24.sp,
                      color: ColorManager.textPrimaryBlack,
                    ),
                  ),

                  SizedBox(height: 20.h),

                  Text(
                    "Card Number",
                    style: getMedium500Style14(
                      fontSize: 14.sp,
                      color: ColorManager.textPrimaryBlack,
                    ),
                  ),

                  SizedBox(height: 8.h),

                  CustomTextField(
                    fillcolor: ColorManager.textbackgroundColorTwo,
                    controller: TextEditingController(),
                    borderRadius: 8.r,
                    prefixIcon: Image.asset(IconManager.card),
                    hint: 'Card Number',
                    style: getRegular400Style12(
                      fontSize: 12.sp,
                      color: ColorManager.textSecondaryThree,
                    ),
                  ),

                  SizedBox(height: 18.h),

                  Text(
                    "Name on Card",
                    style: getMedium500Style14(
                      fontSize: 14.sp,
                      color: ColorManager.textPrimaryBlack,
                    ),
                  ),

                  SizedBox(height: 8.h),

                  CustomTextField(
                    fillcolor: ColorManager.textbackgroundColorTwo,
                    controller: TextEditingController(),
                    borderRadius: 8.r,
                    hint: 'Please your name on card',
                    style: getRegular400Style12(
                      fontSize: 12.sp,
                      color: ColorManager.textSecondaryThree,
                    ),
                  ),

                  SizedBox(height: 20.h),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Expanded(
                                  flex: 2,
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      RichText(
                                        text: TextSpan(
                                          children: [
                                            TextSpan(
                                              text: "Card Number ",
                                              style: getMedium500Style14(
                                                fontSize: 14.sp,
                                                color: ColorManager
                                                    .textPrimaryBlack,
                                              ),
                                            ),
                                            TextSpan(
                                              text: "(Month - year)",
                                              style: getRegular400Style12(
                                                fontSize: 12.sp,
                                                color: ColorManager
                                                    .textSecondaryThree,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),

                                      SizedBox(height: 10.h),

                                      Row(
                                        children: [
                                          Expanded(
                                            child: Container(
                                              height: 45.h,
                                              padding: EdgeInsets.symmetric(
                                                horizontal: 16,
                                              ),
                                              decoration: BoxDecoration(
                                                color: ColorManager
                                                    .textbackgroundColorTwo,
                                                borderRadius:
                                                    BorderRadius.circular(8.r),
                                                border: Border.all(
                                                  color: ColorManager.fieldText,
                                                  width: 1,
                                                ),
                                              ),
                                              child: DropdownButtonHideUnderline(
                                                child: DropdownButton<String>(
                                                  hint: Text(
                                                    "mm",
                                                    style: getRegular400Style12(
                                                      fontSize: 12.sp,
                                                      color: ColorManager
                                                          .textSecondaryThree,
                                                    ),
                                                  ),
                                                  value: selectedMonth,
                                                  items: [
                                                    for (
                                                      int i = 1;
                                                      i <= 12;
                                                      i++
                                                    )
                                                      DropdownMenuItem(
                                                        value: i
                                                            .toString()
                                                            .padLeft(2, '0'),
                                                        child: Text(
                                                          i.toString().padLeft(
                                                            2,
                                                            '0',
                                                          ),
                                                        ),
                                                      ),
                                                  ],
                                                  onChanged: (v) => setState(
                                                    () => selectedMonth = v,
                                                  ),
                                                  isExpanded: true,
                                                  icon: Icon(
                                                    Icons
                                                        .keyboard_arrow_down_rounded,
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),

                                          SizedBox(width: 10.w),

                                          Expanded(
                                            child: Container(
                                              height: 45.h,
                                              padding: EdgeInsets.symmetric(
                                                horizontal: 16,
                                              ),
                                              decoration: BoxDecoration(
                                                color: ColorManager
                                                    .textbackgroundColorTwo,
                                                borderRadius:
                                                    BorderRadius.circular(8.r),
                                                border: Border.all(
                                                  color: ColorManager.fieldText,
                                                  width: 1,
                                                ),
                                              ),
                                              child: DropdownButtonHideUnderline(
                                                child: DropdownButton<String>(
                                                  hint: Text(
                                                    "yyyy",
                                                    style: getRegular400Style12(
                                                      fontSize: 12.sp,
                                                      color: ColorManager
                                                          .textSecondaryThree,
                                                    ),
                                                  ),
                                                  value: selectedYear,
                                                  items: [
                                                    for (
                                                      int y = 2000;
                                                      y <= 2030;
                                                      y++
                                                    )
                                                      DropdownMenuItem(
                                                        value: y.toString(),
                                                        child: Text(
                                                          y.toString(),
                                                        ),
                                                      ),
                                                  ],
                                                  onChanged: (v) => setState(
                                                    () => selectedYear = v,
                                                  ),
                                                  isExpanded: true,
                                                  icon: Icon(
                                                    Icons
                                                        .keyboard_arrow_down_rounded,
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),

                                SizedBox(width: 12.w),

                                Expanded(
                                  flex: 1,
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Card Code",
                                        style: getMedium500Style14(
                                          fontSize: 14.sp,
                                          color: ColorManager.textPrimaryBlack,
                                        ),
                                      ),
                                      SizedBox(height: 10.h),

                                      CustomTextField(
                                        fillcolor:
                                            ColorManager.textbackgroundColorTwo,
                                        controller: TextEditingController(),
                                        borderRadius: 8.r,
                                        hint: 'CVC',
                                        style: getRegular400Style12(
                                          fontSize: 12.sp,
                                          color:
                                              ColorManager.textSecondaryThree,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),

                            SizedBox(height: 25),

                            PrimaryButton(
                              textStyle: TextStyle(
                                color: AppColors.textColor,
                                fontSize: 16.sp,
                                fontFamily: FontConstants.fontFamilyInter,
                                fontWeight: FontWeightManager.semiBold600,
                              ),
                              containColor: AppColors.primary,
                              title: 'Continue',
                              borderRadius: BorderRadius.circular(100.r),
                              onTap: () {
                                Navigator.pushNamed(
                                  context,
                                  RouteName.orderPlaceScreenRoute,
                                );
                              },
                            ),

                            SizedBox(height: 30),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          );
        },
      );
    },
  );
}
