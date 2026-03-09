import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kaderbdms_fo528ab0baec7_marketplace_mobileapp/core/resource/constansts/color_manger.dart';
import 'package:kaderbdms_fo528ab0baec7_marketplace_mobileapp/core/resource/constansts/image_manager.dart';
import 'package:kaderbdms_fo528ab0baec7_marketplace_mobileapp/core/resource/style_manager.dart';
import 'package:kaderbdms_fo528ab0baec7_marketplace_mobileapp/core/route/route_name.dart';
import 'package:kaderbdms_fo528ab0baec7_marketplace_mobileapp/presentation/Onboarding/widgets/custom_button.dart';
import 'package:kaderbdms_fo528ab0baec7_marketplace_mobileapp/presentation/cart/view/widgets/cart_item_card.dart';
import 'package:kaderbdms_fo528ab0baec7_marketplace_mobileapp/presentation/common_widget/common_header.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({super.key});

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.w),
          child: Column(
            children: [
              SizedBox(height: 20.h),
              const CommonHeader(title: "Cart(2)"),
              SizedBox(height: 20.h),

              CartItemCard(
                title: '705 Special Badge Premium Shirt For Men 2023',
                price: '\$128.99',
                imagepath: ImageManager.cartProduct,
                id: '1',
              ),
              SizedBox(height: 5.h),

              CartItemCard(
                title: '705 Special Badge Premium Shirt For Men 2023',
                price: '\$128.99',
                imagepath: ImageManager.cartProduct2,
                id: '2',
              ),

              SizedBox(height: 300.h),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "SubTotal",
                    style: getMedium500Style18(
                      fontSize: 18.sp,
                      color: ColorManager.textPrimaryBlack,
                    ),
                  ),

                  Text(
                    "\$408.99",
                    style: getSemiBold600Style18(
                      fontSize: 18.sp,
                      color: ColorManager.primaryColor,
                    ),
                  ),
                ],
              ),

              SizedBox(height: 20.h),

              PrimaryButton(
                textStyle: getSemiBold600Style14(
                  color: ColorManager.whiteColor,
                  fontSize: 14.sp,
                ),
                containColor: ColorManager.primaryColor,
                title: 'Buy Now',

                borderRadius: BorderRadius.circular(10.r),
                onTap: () {
                  Navigator.pushNamed(
                    context,
                    RouteName.orderAddressScreenRoute,
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
