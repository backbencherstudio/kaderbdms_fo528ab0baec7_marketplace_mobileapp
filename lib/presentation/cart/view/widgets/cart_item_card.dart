import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_riverpod/legacy.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kaderbdms_fo528ab0baec7_marketplace_mobileapp/core/resource/constansts/color_manger.dart';
import 'package:kaderbdms_fo528ab0baec7_marketplace_mobileapp/core/resource/constansts/icon_manager.dart';
import 'package:kaderbdms_fo528ab0baec7_marketplace_mobileapp/core/resource/style_manager.dart';

final quantityProvider =
    StateNotifierProvider.family<QuantityNotifier, int, String>(
      (ref, productId) => QuantityNotifier(),
    );

class QuantityNotifier extends StateNotifier<int> {
  QuantityNotifier() : super(1);

  void increment() => state++;
  void decrement() {
    if (state > 1) state--;
  }
}

class CartItemCard extends ConsumerWidget {
  final String id;
  final String title;
  final String price;
  final String imagepath;

  const CartItemCard({
    super.key,
    required this.id,
    required this.title,
    required this.price,
    required this.imagepath,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final quantityCount = ref.watch(quantityProvider(id));

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
              ClipRRect(
                borderRadius: BorderRadius.circular(10.r),
                child: Image.asset(
                  imagepath,
                  height: 80.h,
                  width: 80.h,
                  fit: BoxFit.cover,
                ),
              ),
              SizedBox(width: 12.w),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          child: Text(
                            title,
                            style: getMedium500Style14(
                              fontSize: 14.sp,
                              color: ColorManager.textPrimaryBlack,
                            ),
                          ),
                        ),
                        SizedBox(width: 8.w),
                        GestureDetector(
                          onTap: () {},
                          child: Image.asset(
                            IconManager.trash,
                            height: 18.h,
                            width: 18.w,
                            fit: BoxFit.contain,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 12.h),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          price,
                          style: getSemiBold600Style18(
                            fontSize: 18.sp,
                            color: ColorManager.primaryColor,
                          ),
                        ),
                        Row(
                          children: [
                            GestureDetector(
                              onTap: () => ref
                                  .read(quantityProvider(id).notifier)
                                  .decrement(),
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
                            Text(
                              quantityCount.toString(),
                              style: TextStyle(
                                fontSize: 16.sp,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(width: 12.w),
                            GestureDetector(
                              onTap: () => ref
                                  .read(quantityProvider(id).notifier)
                                  .increment(),
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
