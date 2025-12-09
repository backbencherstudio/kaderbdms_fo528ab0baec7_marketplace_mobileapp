import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kaderbdms_fo528ab0baec7_marketplace_mobileapp/core/resource/constansts/color_manger.dart';
import 'package:kaderbdms_fo528ab0baec7_marketplace_mobileapp/core/resource/constansts/icon_manager.dart';
import 'package:kaderbdms_fo528ab0baec7_marketplace_mobileapp/core/resource/style_manager.dart';

class CartItemCard extends StatefulWidget {
  final String title;
  final String price;
  final String imagepath;

  const CartItemCard({
    super.key,
    required this.title,
    required this.price,
    required this.imagepath,
  });

  @override
  State<CartItemCard> createState() => _CartItemCardState();
}

class _CartItemCardState extends State<CartItemCard> {
  int quantity = 1;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 12.h),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12.r),
            color: Colors.white,
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Product Image
              ClipRRect(
                borderRadius: BorderRadius.circular(10.r),
                child: Image.asset(
                  widget.imagepath,
                  height: 80.h,
                  width: 80.h,
                  fit: BoxFit.cover,
                ),
              ),

              SizedBox(width: 12.w),

              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          child: Text(
                            widget.title,
                            style: getMedium500Style14(
                              fontSize: 14.sp,
                              color: ColorManager.textPrimaryBlack,
                            ),
                          ),
                        ),
                        SizedBox(width: 8.w),
                        Image.asset(
                          IconManager.trash,
                          height: 18.h,
                          width: 18.w,
                          fit: BoxFit.contain,
                        ),
                      ],
                    ),

                    SizedBox(height: 12.h),

                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          widget.price,
                          style: getSemiBold600Style18(
                            fontSize: 18.sp,
                            color: ColorManager.primaryColor,
                          ),
                        ),

                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            GestureDetector(
                              onTap: () {
                                if (quantity > 1) setState(() => quantity--);
                              },
                              child: Container(
                                height: 28.h,
                                width: 28.h,
                                alignment: Alignment.center,
                                child: Image.asset(
                                  IconManager.minus,
                                  height: 25.h,
                                  width: 25.w,
                                  color: ColorManager.minusButtoncolor,
                                  fit: BoxFit.contain,
                                ),
                              ),
                            ),

                            SizedBox(width: 12.w),

                            // Quantity Text
                            Text(
                              quantity.toString(),
                              style: TextStyle(
                                fontSize: 16.sp,
                                fontWeight: FontWeight.bold,
                              ),
                            ),

                            SizedBox(width: 12.w),

                            // Plus Button
                            GestureDetector(
                              onTap: () => setState(() => quantity++),
                              child: Container(
                                height: 28.h,
                                width: 28.h,
                                alignment: Alignment.center,
                                child: Image.asset(
                                  IconManager.plus,
                                  height: 25.h,
                                  width: 25.w,
                                  fit: BoxFit.contain,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),

        Padding(
          padding: EdgeInsets.symmetric(horizontal: 10.w),
          child: Divider(color: ColorManager.chatBoxbgColor, thickness: 1),
        ),
      ],
    );
  }
}
