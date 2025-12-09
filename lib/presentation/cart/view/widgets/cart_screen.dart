import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kaderbdms_fo528ab0baec7_marketplace_mobileapp/core/resource/constansts/image_manager.dart';
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
              ),
              SizedBox(height: 5.h),
              CartItemCard(
                title: '705 Special Badge Premium Shirt For Men 2023',
                price: '\$128.99',
                imagepath: ImageManager.cartProduct2,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
