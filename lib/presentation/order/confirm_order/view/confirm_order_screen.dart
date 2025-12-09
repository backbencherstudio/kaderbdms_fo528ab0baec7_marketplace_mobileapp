import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kaderbdms_fo528ab0baec7_marketplace_mobileapp/core/constansts/app_colors.dart';
import 'package:kaderbdms_fo528ab0baec7_marketplace_mobileapp/core/resource/constansts/color_manger.dart';
import 'package:kaderbdms_fo528ab0baec7_marketplace_mobileapp/core/resource/constansts/icon_manager.dart';
import 'package:kaderbdms_fo528ab0baec7_marketplace_mobileapp/core/resource/constansts/image_manager.dart';
import 'package:kaderbdms_fo528ab0baec7_marketplace_mobileapp/core/resource/font_manager.dart';
import 'package:kaderbdms_fo528ab0baec7_marketplace_mobileapp/core/resource/style_manager.dart';
import 'package:kaderbdms_fo528ab0baec7_marketplace_mobileapp/presentation/Onboarding/widgets/custom_button.dart';
import 'package:kaderbdms_fo528ab0baec7_marketplace_mobileapp/presentation/common_widget/common_header.dart';
import 'package:kaderbdms_fo528ab0baec7_marketplace_mobileapp/presentation/order/add_card_bottom_sheet/view/add_card_bottom_sheet.dart';
import 'package:kaderbdms_fo528ab0baec7_marketplace_mobileapp/presentation/order/view/widgets/order_product_card.dart';

class ConfirmOrderScreen extends StatefulWidget {
  const ConfirmOrderScreen({super.key});

  @override
  State<ConfirmOrderScreen> createState() => _ConfirmOrderScreenState();
}

class _ConfirmOrderScreenState extends State<ConfirmOrderScreen> {
  bool isChecked = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 20.h),

                CommonHeader(title: "Confirm Your Order"),

                SizedBox(height: 15.h),

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      IconManager.one2,
                      height: 20.h,
                      width: 20.h,
                      fit: BoxFit.contain,
                    ),

                    SizedBox(width: 6.w),

                    Text(
                      "Set Address",
                      style: getSemiBold600Style14(
                        fontSize: 14.sp,
                        color: ColorManager.textSecondaryTwo,
                      ),
                    ),

                    SizedBox(width: 15.w),

                    Image.asset(
                      IconManager.orderArrow,
                      height: 18.h,
                      width: 18.h,
                      fit: BoxFit.contain,
                    ),

                    SizedBox(width: 15.w),

                    Image.asset(
                      IconManager.two2,
                      height: 20.h,
                      width: 20.h,
                      fit: BoxFit.contain,
                    ),

                    SizedBox(width: 6.w),

                    Text(
                      "Confirm Order",
                      style: getMedium500Style14(
                        fontSize: 14.sp,
                        color: ColorManager.primaryColor,
                      ),
                    ),
                  ],
                ),

                SizedBox(height: 10.h),

                Divider(color: ColorManager.textSecondaryTwo),

                SizedBox(height: 20.h),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Image.asset(
                            IconManager.myLocation,
                            width: 22.w,
                            height: 22.h,
                            fit: BoxFit.contain,
                          ),

                          SizedBox(width: 10),

                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Text(
                                    "Jonathan",
                                    style: getMedium500Style16(
                                      fontSize: 16.sp,
                                      color: AppColors.textColorBlack,
                                    ),
                                  ),
                                  SizedBox(width: 5.w),

                                  Text(
                                    "(+32) 456 7889012",
                                    style: getRegular400Style16(
                                      fontSize: 16.sp,
                                      color: ColorManager.textSecondary,
                                    ),
                                  ),
                                ],
                              ),

                              SizedBox(height: 5.h),

                              Text(
                                "4517 Washington Ave. Manchester, \nKentucky 39495",
                                style: getRegular400Style14(
                                  fontSize: 14.sp,
                                  color: ColorManager.textSecondary,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),

                    GestureDetector(
                      onTap: () {},
                      child: Image.asset(
                        IconManager.locationArrow,
                        width: 22.w,
                        height: 22.h,
                        fit: BoxFit.contain,
                      ),
                    ),
                  ],
                ),

                SizedBox(height: 20.h),

                Text(
                  "Item Detail",
                  style: getMedium500Style20(
                    fontSize: 20.sp,
                    color: ColorManager.textPrimaryBlack,
                  ),
                ),

                SizedBox(height: 10.h),

                OrderProductCard(imagePath: ImageManager.cartProduct),
                OrderProductCard(imagePath: ImageManager.cartProduct2),

                SizedBox(height: 20.h),

                Text(
                  "Order Summary",
                  style: getMedium500Style20(
                    fontSize: 20.sp,
                    color: ColorManager.textPrimaryBlack,
                  ),
                ),

                SizedBox(height: 10.h),

                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Subtotal",
                            style: getRegular400Style14(
                              fontSize: 14.sp,
                              color: ColorManager.textSecondary,
                            ),
                          ),

                          Text(
                            "\$240.00",
                            style: getMedium500Style14(
                              fontSize: 14.sp,
                              color: ColorManager.textPrimaryBlack,
                            ),
                          ),
                        ],
                      ),

                      SizedBox(height: 10.h),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Standard Shipping",
                            style: getRegular400Style14(
                              fontSize: 14.sp,
                              color: ColorManager.textSecondary,
                            ),
                          ),

                          Text(
                            "FREE",
                            style: getMedium500Style14(
                              fontSize: 14.sp,
                              color: ColorManager.textSecondaryThree,
                            ),
                          ),
                        ],
                      ),

                      SizedBox(height: 10.h),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Tax",
                            style: getRegular400Style14(
                              fontSize: 14.sp,
                              color: ColorManager.textSecondary,
                            ),
                          ),

                          Text(
                            "\$1.6",
                            style: getMedium500Style14(
                              fontSize: 14.sp,
                              color: ColorManager.textPrimaryBlack,
                            ),
                          ),
                        ],
                      ),

                      SizedBox(height: 10.h),

                      Divider(color: ColorManager.textSecondaryTwo),

                      SizedBox(height: 10.h),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Total (2 Item)",
                            style: getMedium500Style14(
                              fontSize: 14.sp,
                              color: ColorManager.textSecondaryThree,
                            ),
                          ),

                          Text(
                            "\$243.99",
                            style: getSemiBold600Style14(
                              fontSize: 14.sp,
                              color: ColorManager.primaryColor,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 30.h),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Checkbox(
                      value: isChecked,
                      activeColor: ColorManager.primaryColor,
                      onChanged: (value) {
                        setState(() {
                          isChecked = value!;
                        });
                      },
                    ),

                    Expanded(
                      child: RichText(
                        text: TextSpan(
                          style: getRegular400Style12(
                            fontSize: 12.sp,
                            color: ColorManager.textSecondaryThree,
                          ),
                          children: [
                            const TextSpan(
                              text: "By continuing you, you agree to the ",
                            ),

                            TextSpan(
                              text: "Privacy Policy",
                              style: getMedium500Style10(
                                color: ColorManager.primaryColor,
                                fontSize: 10.sp,
                              ),
                            ),

                            const TextSpan(text: " and "),

                            TextSpan(
                              text: "Terms of Use",
                              style: getMedium500Style10(
                                color: ColorManager.primaryColor,
                                fontSize: 10.sp,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),

                SizedBox(height: 10.h),

                PrimaryButton(
                  textStyle: TextStyle(
                    color: AppColors.textColor,
                    fontSize: 16.sp,
                    fontFamily: FontConstants.fontFamilyInter,
                    fontWeight: FontWeightManager.semiBold600,
                  ),
                  containColor: AppColors.primary,
                  title: 'Submit Order',

                  borderRadius: BorderRadius.circular(100.r),
                  onTap: () {
                    showAddCardBottomSheet(context);
                  },
                ),

                SizedBox(height: 20.h),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
