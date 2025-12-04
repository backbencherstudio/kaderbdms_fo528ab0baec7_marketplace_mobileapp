import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kaderbdms_fo528ab0baec7_marketplace_mobileapp/core/resource/constansts/image_manager.dart';
import 'package:kaderbdms_fo528ab0baec7_marketplace_mobileapp/presentation/common_widget/common_header.dart';
import 'package:kaderbdms_fo528ab0baec7_marketplace_mobileapp/presentation/common_widget/product_card.dart';

class WishListScreen extends StatefulWidget {
  const WishListScreen({super.key});

  @override
  State<WishListScreen> createState() => _WishListScreenState();
}

class _WishListScreenState extends State<WishListScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              SizedBox(height: 20.h),

              const CommonHeader(title: "Wishlist"),

              SizedBox(height: 20.h),

              Row(
                children: [
                  Expanded(
                    child: ProductCard(
                      imagePath: ImageManager.productShirt01,
                      title: 'Smart Men Shirt',
                      description: 'A yellow shirt with a \nbicycle logo on it',
                      price: '€321.99',
                      rating: '4.9',
                      onCartTap: () {},
                      onLikeTap: () {},
                    ),
                  ),
                  SizedBox(width: 10.w),
                  Expanded(
                    child: ProductCard(
                      imagePath: ImageManager.productShirt02,
                      title: 'Smart Men Shirt',
                      description: 'A yellow shirt with a \nbicycle logo on it',
                      price: '€321.99',
                      rating: '4.9',
                      onCartTap: () {},
                      onLikeTap: () {},
                    ),
                  ),
                ],
              ),

              SizedBox(height: 10.h),

              Row(
                children: [
                  Expanded(
                    child: ProductCard(
                      imagePath: ImageManager.productShirt02,
                      title: 'Smart Men Shirt',
                      description: 'A yellow shirt with a \nbicycle logo on it',
                      price: '€321.99',
                      rating: '4.9',
                      onCartTap: () {},
                      onLikeTap: () {},
                    ),
                  ),
                  SizedBox(width: 10.w),
                  Expanded(
                    child: ProductCard(
                      imagePath: ImageManager.productShirt01,
                      title: 'Smart Men Shirt',
                      description: 'A yellow shirt with a \nbicycle logo on it',
                      price: '€321.99',
                      rating: '4.9',
                      onCartTap: () {},
                      onLikeTap: () {},
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
