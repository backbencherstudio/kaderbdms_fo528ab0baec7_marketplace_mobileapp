import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kaderbdms_fo528ab0baec7_marketplace_mobileapp/core/constansts/app_colors.dart';
import 'package:kaderbdms_fo528ab0baec7_marketplace_mobileapp/core/resource/constansts/color_manger.dart';
import 'package:kaderbdms_fo528ab0baec7_marketplace_mobileapp/core/resource/style_manager.dart';
import 'package:kaderbdms_fo528ab0baec7_marketplace_mobileapp/core/route/route_name.dart';
import 'package:kaderbdms_fo528ab0baec7_marketplace_mobileapp/presentation/common_widget/common_header.dart';
import 'package:kaderbdms_fo528ab0baec7_marketplace_mobileapp/presentation/profile/order_details/view/widgets/custom_button.dart';
import 'package:kaderbdms_fo528ab0baec7_marketplace_mobileapp/presentation/profile/order_details/view/widgets/item_card.dart';

class orderDetails extends StatefulWidget {
  const orderDetails({super.key});

  @override
  State<orderDetails> createState() => _orderDetailsState();
}

class _orderDetailsState extends State<orderDetails> {
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

                CommonHeader(title: "Order Details"),

                SizedBox(height: 20.h),

                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Container(
                    height: 330.h,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.r),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black12,
                          blurRadius: 6,
                          offset: Offset(0, 3),
                          spreadRadius: 1,
                        ),
                      ],
                    ),

                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(height: 10.h),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Order Number",
                                style: getMedium500Style18(
                                  color: ColorManager.textSecondary,
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.symmetric(
                                  horizontal: 6,
                                  vertical: 4,
                                ),
                                decoration: BoxDecoration(
                                  color: ColorManager.textGreenStatusColor,

                                  border: Border.all(
                                    color: ColorManager.textGreenStatusColor,
                                    width: 1,
                                  ),
                                  borderRadius: BorderRadius.circular(5),
                                ),
                                child: Text(
                                  "Completed",
                                  style: getSemiBold600Style10(
                                    color: ColorManager.textGreenColor,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 10.h),
                          Text(
                            "27456",
                            style: getSemiBold600Style14(
                              color: ColorManager.textRedColor,
                            ),
                          ),
                          SizedBox(height: 10.h),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Order Date",
                                style: getMedium500Style18(
                                  color: ColorManager.textSecondary,
                                ),
                              ),
                              Text(
                                "Payment Method",
                                style: getMedium500Style18(
                                  color: ColorManager.textSecondary,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 10.h),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "21.08.2025",
                                style: getSemiBold600Style14(
                                  color: ColorManager.textSecondary,
                                ),
                              ),
                              Text(
                                "Credit/Debit Card",
                                style: getSemiBold600Style14(
                                  color: ColorManager.textPrimaryBlack,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 20.h),

                          Text(
                            "Shipping Address",
                            style: getMedium500Style18(
                              color: ColorManager.textSecondary,
                            ),
                          ),

                          SizedBox(height: 10.h),

                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 5),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Image.asset(
                                  'assets/icons/location.png',
                                  width: 24,
                                  height: 24,
                                ),

                                SizedBox(width: 5.w),

                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      children: [
                                        Text(
                                          "Jonathan",
                                          style: getMedium500Style16(
                                            color: AppColors.textColorBlack,
                                          ),
                                        ),
                                        SizedBox(width: 5.w),

                                        Text(
                                          "(+32) 456 7889012",
                                          style: getRegular400Style16(
                                            color: ColorManager.textSecondary,
                                          ),
                                        ),
                                      ],
                                    ),

                                    SizedBox(height: 5.h),

                                    Text(
                                      "4517 Washington Ave. Manchester, \nKentucky 39495",
                                      style: getRegular400Style14(
                                        color: ColorManager.textSecondary,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),

                          SizedBox(height: 20.h),

                          Text(
                            "Total Amount",
                            style: getMedium500Style18(
                              color: ColorManager.textSecondary,
                            ),
                          ),

                          SizedBox(height: 10.h),

                          Text(
                            "\$243.00",
                            style: getSemiBold600Style14(
                              color: ColorManager.primaryColor,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),

                SizedBox(height: 20.h),

                Text(
                  "Item Detail",
                  style: getMedium500Style20(
                    color: ColorManager.textPrimaryBlack,
                  ),
                ),
                SizedBox(height: 10.h),

                const ItemCard(
                  title: "The White Hat Pro\nPremium",
                  imagePath: "assets/images/shirt01.png",
                  amount: "\$28",
                  quantityAmount: "1",
                ),

                SizedBox(height: 10.h),

                const ItemCard(
                  title: "The White Hat Pro\nPremium",
                  imagePath: "assets/images/shirt02.png",
                  amount: "\$28",
                  quantityAmount: "1",
                ),

                SizedBox(height: 20.h),

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
                              color: ColorManager.textSecondaryThree,
                            ),
                          ),
                          Text(
                            "\$240.99",
                            style: getMedium500Style14(
                              color: ColorManager.textPrimaryBlack,
                            ),
                          ),
                        ],
                      ),

                      SizedBox(height: 5.h),
                      Divider(color: ColorManager.fieldText, thickness: 1),
                      SizedBox(height: 5.h),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Total (2 Item)",
                            style: getMedium500Style14(
                              color: ColorManager.itemTextColor,
                            ),
                          ),
                          Text(
                            "\$243.99",
                            style: getSemiBold600Style16(
                              color: ColorManager.primaryColor,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),

                SizedBox(height: 40.h),

                SafeArea(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CustomButton(
                        text: "Cancel",
                        bgColor: ColorManager.buttonSecondaryColor,
                        textColor: ColorManager.textSecondaryThree,
                        onTap: () {
                          Navigator.pop(context);
                        },
                      ),

                      SizedBox(width: 10.w),

                      CustomButton(
                        text: "Review",
                        bgColor: ColorManager.primaryColor,
                        textColor: Colors.white,
                        onTap: () {
                          Navigator.pushNamed(context, RouteName.reviewRoute);
                        },
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
